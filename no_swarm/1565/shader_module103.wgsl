struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: u32 = 96907u;

var<private> global2: array<bool, 6>;

var<private> global3: array<Struct_1, 12>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: bool) -> vec3<bool> {
    global1 = reverseBits(~global0.b.b);
    global2 = array<bool, 6>();
    let var_0 = max(26494i, _wgslsmith_mult_i32(firstTrailingBit(u_input.a >> (global0.b.b % 32u)), firstLeadingBit(u_input.a)));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(round(global0.a)), global0.b, -(vec2<i32>(-1i) * -_wgslsmith_div_vec2_i32(vec2<i32>(286i, u_input.a), global0.c)));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1395f * var_1.a)), global0.b, firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(firstLeadingBit(-2147483647i), _wgslsmith_div_i32(-2147483647i, -37491i)), u_input.a)));
    return select(var_1.b.a, var_2.b.a, false);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: vec3<bool>) -> vec3<bool> {
    let var_0 = Struct_3(-746f, Struct_1(select(select(global0.b.a, func_3(Struct_4(arg_3, 0u, global0.c.x, 22677i), arg_0.zy, global2[_wgslsmith_index_u32(arg_1.x, 6u)]), u_input.a > 2147483647i), arg_0.xzz, vec3<bool>(!arg_3.x, !global2[_wgslsmith_index_u32(26881u, 6u)], global0.b.a.x)), countOneBits(0u)), select(global0.c, vec2<i32>(4318i ^ firstLeadingBit(global0.c.x), countOneBits(~u_input.a)), true));
    var var_1 = var_0.b;
    let var_2 = Struct_2(max(arg_2.yzx, ~(~countOneBits(vec3<u32>(1u, var_1.b, 0u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a, var_0.a, var_0.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a))))), arg_2, Struct_1(arg_3, firstLeadingBit(21653u)));
    let var_3 = Struct_1(select(arg_0.zyx, !var_1.a, select(select(vec3<bool>(true, global0.b.a.x, false), var_1.a, vec3<bool>(false, false, true)), vec3<bool>(var_2.d.a.x || var_1.a.x, global2[_wgslsmith_index_u32(arg_1.x, 6u)] | true, true), vec3<bool>(global0.b.a.x & global0.b.a.x, !var_1.a.x, global0.b.a.x))), 1u);
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1378f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_f32(abs(-1144f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-1172f)), _wgslsmith_f_op_f32(-962f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(538f, var_0.a)) + 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(835f, 1458f)))), _wgslsmith_f_op_f32(trunc(-951f)))));
    return func_3(Struct_4(vec3<bool>(true, !(var_0.b.b > 34769u), var_0.b.a.x), var_1.b, firstTrailingBit(-20744i), -14118i), func_3(Struct_4(arg_3, _wgslsmith_div_u32(arg_2.x, 1u), _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_0.c.x, -2147483647i), -u_input.a, 0i << (arg_2.x % 32u)), -u_input.a), var_2.d.a.xz, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(~4294967295u, reverseBits(var_3.b)), 6u)]).yy, true);
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_4) -> vec4<bool> {
    let var_0 = !all(vec3<bool>(-2386f > global0.a, ~arg_2.b != ~arg_2.b, global0.b.a.x));
    let var_1 = Struct_3(-496f, global3[_wgslsmith_index_u32(4294967295u, 12u)], global0.c);
    return select(!(!(!vec4<bool>(var_0, true, true, true))), vec4<bool>(true && any(func_2(vec4<bool>(true, true, false, false), vec2<u32>(global0.b.b, 1u), vec4<u32>(global0.b.b, var_1.b.b, 1u, 21208u), vec3<bool>(true, arg_0, global2[_wgslsmith_index_u32(4294967295u, 6u)]))), arg_2.a.x, !(!(!global2[_wgslsmith_index_u32(arg_2.b, 6u)])), arg_0), !var_1.b.a.x);
}

fn func_1() -> Struct_4 {
    let var_0 = ~vec3<u32>(1u, _wgslsmith_mod_u32(~18809u, global0.b.b), ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, global0.b.b), vec3<u32>(global0.b.b, global0.b.b, 4294967295u)), ~38145u, -27873i < global0.c.x));
    let var_1 = all(select(vec3<bool>(!global0.b.a.x | true, !all(vec3<bool>(false, global0.b.a.x, true)), global0.b.a.x), vec3<bool>(!global0.b.a.x && all(vec4<bool>(false, global0.b.a.x, false, global0.b.a.x)), all(global0.b.a), all(vec4<bool>(global0.b.a.x, global2[_wgslsmith_index_u32(var_0.x, 6u)], global2[_wgslsmith_index_u32(55705u, 6u)], global2[_wgslsmith_index_u32(52758u, 6u)]))), false));
    let var_2 = -2147483647i;
    let var_3 = !func_4(global0.b.a.x, 820f, Struct_4(func_2(vec4<bool>(var_1, false, false, false), vec2<u32>(39147u, var_0.x), ~vec4<u32>(var_0.x, 46806u, 1u, var_0.x), global0.b.a), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_0.x, var_0.x, 1u, var_0.x), vec4<u32>(global0.b.b, 69611u, global0.b.b, 1u)), vec4<u32>(20808u, 96305u, global0.b.b, global0.b.b) >> (vec4<u32>(1u, var_0.x, global0.b.b, var_0.x) % vec4<u32>(32u))), -_wgslsmith_mult_i32(global0.c.x, var_2), global0.c.x >> ((global0.b.b | 1u) % 32u)));
    var var_4 = 64539i;
    return Struct_4(var_3.wzz, ~32423u, min(global0.c.x, _wgslsmith_div_i32(reverseBits(global0.c.x), _wgslsmith_div_i32(max(45804i, 21091i), ~u_input.a))), _wgslsmith_dot_vec3_i32(countOneBits(firstTrailingBit(abs(vec3<i32>(u_input.a, var_2, -11250i)))), -reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(14249i, 0i, -1i), vec3<i32>(2147483647i, global0.c.x, 1799i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a, global0.a, global0.a, 974f))) * vec4<f32>(376f, global0.a, global0.a, 238f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-501f, 1199f, -1000f, global0.a) - vec4<f32>(global0.a, global0.a, 2462f, 1000f)))))), ~(-vec3<i32>(44413i, -22743i, -1i)) << (~vec3<u32>(_wgslsmith_mult_u32(44086u, global0.b.b), firstLeadingBit(0u), 4294967295u) % vec3<u32>(32u)), -2147483647i, 1u);
}

