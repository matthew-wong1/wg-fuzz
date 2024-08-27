struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(4593u, 21870u, 1u), vec3<bool>(true, true, false));

var<private> global1: vec2<i32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> f32 {
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-310f, _wgslsmith_f_op_f32(sign(730f)), !global0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-593f + -873f) + _wgslsmith_f_op_f32(round(-1595f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1156f)) + _wgslsmith_f_op_f32(max(-416f, 261f))))))));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_1(vec3<u32>(4294967295u, u_input.b.x, global0.a.x), select(vec3<bool>(all(vec2<bool>(global0.b.x, global0.b.x)), false, !global0.b.x), global0.b, false));
    var var_1 = Struct_3(Struct_2(Struct_1(vec3<u32>(u_input.b.x << (18850u % 32u), ~0u, countOneBits(var_0.a.x)), var_0.b), Struct_1(vec3<u32>(10201u ^ var_0.a.x, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, 75067u), vec2<u32>(u_input.b.x, 4294967295u))), vec3<bool>(true, true, true)), u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1288f))), Struct_1(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.a.x) >> (var_0.a.xz % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, global0.a.x), vec2<u32>(u_input.b.x, u_input.b.x))), global0.a.x), vec3<bool>(global0.b.x, global0.b.x, true)), Struct_1(~((vec3<u32>(5655u, global0.a.x, var_0.a.x) >> (u_input.b.xxw % vec3<u32>(32u))) >> (_wgslsmith_div_vec3_u32(u_input.b.xxx, var_0.a) % vec3<u32>(32u))), !var_0.b), vec2<bool>(false, true), vec4<i32>(0i, global1.x, global1.x & abs(-58082i), _wgslsmith_mod_i32(2147483647i, select(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, global1.x), vec2<i32>(global1.x, global1.x)), global1.x < global1.x))));
    global0 = Struct_1(max(abs(~global0.a), var_1.b.a), vec3<bool>(_wgslsmith_mult_i32(global1.x | u_input.c.x, global1.x >> (40455u % 32u)) != global1.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.a.d), _wgslsmith_f_op_f32(floor(-1000f)))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.a.d - -541f))), min(u_input.a, select(global1.x, -5781i, global0.b.x)) >= select(~(-57971i), _wgslsmith_dot_vec4_i32(var_1.e, vec4<i32>(-35788i, var_1.e.x, -7650i, -64287i)), false)));
    var var_2 = false;
    var var_3 = -1000f;
    return var_1.c.b;
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1859f), _wgslsmith_f_op_f32(-141f - -126f), _wgslsmith_f_op_f32(arg_0.x * 244f), arg_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-780f, arg_0.x, -925f, arg_0.x) - vec4<f32>(1422f, arg_0.x, arg_0.x, -330f)))))) + vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1643f * arg_0.x))), _wgslsmith_f_op_f32(418f - -474f), _wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0.x)), 288f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))))));
    var var_1 = _wgslsmith_sub_i32(u_input.d, ~abs(i32(-1i) * -10805i)) >> (90205u % 32u);
    var var_2 = !global0.b.x;
    let var_3 = (_wgslsmith_mult_u32(94250u, 1u) >> ((global0.a.x & global0.a.x) % 32u)) << (34894u % 32u);
    var var_4 = global0.b;
    return Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec3_u32(global0.a, ~vec3<u32>(4294967295u, global0.a.x, global0.a.x)), global0.b), Struct_1(~vec3<u32>(global0.a.x, 4294967295u, var_3), func_3()), vec3<i32>(global1.x, global1.x, 0i), -116f), Struct_1(countOneBits(~vec3<u32>(var_3, 1u, global0.a.x) >> (firstLeadingBit(global0.a) % vec3<u32>(32u))), !(!(!global0.b))), Struct_1(countOneBits(~vec3<u32>(19340u, global0.a.x, 2019u)) ^ ~u_input.b.wzy, select(select(global0.b, !vec3<bool>(var_4.x, global0.b.x, global0.b.x), false), vec3<bool>(global0.b.x != true, false, any(vec4<bool>(var_4.x, global0.b.x, global0.b.x, false))), select(true, var_4.x, true) & true)), vec2<bool>(all(vec4<bool>(true, func_3().x, global1.x > global1.x, false & global0.b.x)), false), reverseBits(min(vec4<i32>(0i, -24916i, -2147483647i, global1.x), vec4<i32>(u_input.c.x, -1i, 24231i, u_input.a) >> (vec4<u32>(var_3, 1u, 37033u, 6838u) % vec4<u32>(32u))) & -(~vec4<i32>(-2147483647i, global1.x, -2147483647i, u_input.a))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_3) -> Struct_1 {
    var var_0 = vec2<u32>(13452u, 1u);
    global1 = firstLeadingBit(arg_0.yx);
    global1 = ~arg_2.e.zw;
    global1 = u_input.c.zy;
    var var_1 = abs(~1u);
    return Struct_1(vec3<u32>(firstLeadingBit(countOneBits(var_0.x)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, arg_2.c.a.x, var_0.x) ^ u_input.b, ~vec4<u32>(0u, arg_2.a.b.a.x, 59667u, global0.a.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, 16529u, 1u, 15390u) & vec4<u32>(43759u, 82282u, global0.a.x, arg_2.c.a.x), reverseBits(vec4<u32>(global0.a.x, 1u, global0.a.x, 35198u))), u_input.b), var_0.x), global0.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(vec2<i32>(28474i, -1i) | u_input.c.zy);
    var var_0 = func_4(u_input.c, select(false, !global0.b.x, any(!global0.b.xx)), func_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(624f, 859f))), -925f)));
    var var_1 = u_input.c.xx;
    let var_2 = func_1(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -246f))))).a;
    global0 = var_2.a;
    var var_3 = ~23783u;
    var var_4 = Struct_1(vec3<u32>(63950u >> (max(~1u, _wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(0u, u_input.b.x, 16312u))) % 32u), ~global0.a.x, global0.a.x ^ 0u), !func_4(reverseBits(vec3<i32>(-5225i, var_1.x, u_input.d)), var_2.b.b.x, Struct_3(func_1(vec2<f32>(var_2.d, var_2.d)).a, func_4(vec3<i32>(27254i, 0i, -24571i), true, Struct_3(var_2, Struct_1(vec3<u32>(7070u, 1u, global0.a.x), global0.b), Struct_1(var_0.a, var_0.b), global0.b.xz, vec4<i32>(global1.x, u_input.a, 2252i, 13399i))), Struct_1(vec3<u32>(u_input.b.x, 1u, 0u), global0.b), var_0.b.xz, _wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, 0i, var_2.c.x, var_2.c.x), vec4<i32>(-4i, var_1.x, -35605i, 1i)))).b);
    var var_5 = var_4.a.x <= u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x);
}

