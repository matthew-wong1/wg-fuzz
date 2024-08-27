struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: f32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
    d: Struct_3,
    e: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3 = Struct_3(Struct_1(false, 4294967295u), Struct_2(false, vec3<u32>(0u, 1u, 0u), 424f, vec2<f32>(379f, -1129f)), Struct_1(false, 45637u), Struct_2(false, vec3<u32>(30735u, 0u, 2103u), -1771f, vec2<f32>(992f, 348f)), vec3<i32>(14563i, -56953i, -97389i));

var<private> global2: Struct_1 = Struct_1(false, 51754u);

var<private> global3: vec4<u32> = vec4<u32>(39305u, 57447u, 4294967295u, 19077u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> bool {
    return global2.a;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<f32>) -> f32 {
    global1 = global0.d;
    let var_0 = ~reverseBits(global3.zyz);
    global3 = global0.a;
    global0 = Struct_4(~vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, 4294967295u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, _wgslsmith_f_op_f32(global0.b.x * 182f), arg_2.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(730f, -653f, 993f))), select(vec3<bool>(true, false, true), select(vec3<bool>(global2.a, global2.a, global1.d.a), vec3<bool>(global2.a, false, global0.c), global2.a), !global2.a))), arg_2)), true, Struct_3(Struct_1(select(13619u, 42200u, true) == 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, global0.a.x) >> (global3.yw % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(global2.b, global1.b.b.x), var_0.xz))), global0.d.b, global0.d.c, global1.b, countOneBits(firstTrailingBit(~global1.e))), -45174i);
    var var_1 = firstLeadingBit(var_0);
    return -1261f;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> Struct_5 {
    global2 = arg_1.c;
    global2 = Struct_1(all(vec2<bool>(func_2(), arg_2.c.a)), 1u & global0.a.x);
    global1 = Struct_3(arg_1.a, Struct_2(!arg_1.d.a == true, _wgslsmith_mod_vec3_u32(global1.d.b, ~(vec3<u32>(4294967295u, u_input.a.x, 1u) >> (arg_1.b.b % vec3<u32>(32u)))), arg_2.d.c, vec2<f32>(-259f, -2041f)), Struct_1(false, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.d.d.b.x, 0u, global2.b), global0.a)), arg_2.d, u_input.d);
    var var_0 = Struct_1(func_2(), arg_1.d.b.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1069f);
    return Struct_5(Struct_3(global1.a, Struct_2(var_0.a, abs(vec3<u32>(0u, 7298u, global2.b)), _wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, false, global0.c), -1040f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1337f, -362f, -2502f), global0.b, vec3<bool>(var_0.a, false, var_0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_2.b.d)))), arg_2.c, arg_2.d, arg_2.e), ~u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5) -> u32 {
    global3 = global0.a >> (global0.a % vec4<u32>(32u));
    let var_0 = vec4<u32>(4294967295u, firstLeadingBit(firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(arg_1.a.b.b, vec3<u32>(global3.x, 28136u, global3.x)), global0.a.wyw))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(arg_0.b, 1u)), _wgslsmith_sub_vec2_u32(arg_1.a.b.b.zz & u_input.a, vec2<u32>(arg_1.a.b.b.x, 4294967295u) | vec2<u32>(11873u, global2.b))), (min(vec2<u32>(37666u, 4294967295u), global0.d.b.b.yz) >> ((global0.a.yz >> (global3.yw % vec2<u32>(32u))) % vec2<u32>(32u))) << (u_input.a % vec2<u32>(32u))), 62813u);
    var var_1 = global1.e.x;
    global1 = func_1(vec3<i32>(_wgslsmith_mod_i32(-61906i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global1.e.x), u_input.d.xz)) ^ 20671i, arg_1.b, (u_input.d.x ^ global1.e.x) | func_1(_wgslsmith_div_vec3_i32(arg_1.a.e, u_input.d), global0.d, func_1(vec3<i32>(u_input.c, -1i, global0.e), global0.d, global0.d, u_input.d.x).a, 1i & global0.e).b), arg_1.a, arg_1.a, countOneBits(u_input.d.x)).a;
    global3 = var_0;
    return _wgslsmith_mult_u32(global0.d.a.b, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global3.x, u_input.a.x), 1u), vec2<u32>(reverseBits(var_0.x), 40133u)), vec2<u32>(global2.b, abs(~global0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, false), vec2<bool>(global2.a | true, ~1u <= _wgslsmith_dot_vec3_u32(global0.a.yww, global3.xxy)), (any(vec2<bool>(global0.c, true)) & true) & false), vec2<bool>(~global3.x != func_4(global1.c, func_1(global1.e, Struct_3(global0.d.a, Struct_2(false, vec3<u32>(global0.a.x, 12666u, u_input.a.x), -889f, global0.d.b.d), Struct_1(global0.c, 0u), global1.b, global0.d.e), global0.d, u_input.c)), true), func_2());
    let var_1 = Struct_4(abs(_wgslsmith_sub_vec4_u32(~reverseBits(global0.a), global0.a)), global0.b, ~(~(~0u)) == ~_wgslsmith_add_u32(reverseBits(4294967295u), global0.a.x), global0.d, _wgslsmith_add_i32(~firstTrailingBit(5281i) & ~_wgslsmith_mult_i32(-42048i, -24664i), 1i));
    let var_2 = _wgslsmith_dot_vec4_u32(global0.a, ~select(global0.a, _wgslsmith_div_vec4_u32(global0.a, ~var_1.a), global0.d.c.b == 0u));
    global0 = Struct_4(~vec4<u32>(~(~84576u), func_1(vec3<i32>(1i, global1.e.x, u_input.d.x), Struct_3(global1.c, global1.d, Struct_1(global0.d.b.a, 4294967295u), Struct_2(false, vec3<u32>(global1.a.b, global0.d.c.b, global1.a.b), global1.b.c, vec2<f32>(global0.d.d.c, -1498f)), global0.d.e), func_1(vec3<i32>(-6855i, var_1.d.e.x, var_1.e), Struct_3(Struct_1(false, global2.b), Struct_2(var_1.d.c.a, vec3<u32>(var_2, 43151u, global2.b), -1343f, vec2<f32>(global0.d.b.d.x, global1.d.d.x)), Struct_1(global0.c, 101716u), var_1.d.d, vec3<i32>(-32835i, global0.e, 17133i)), Struct_3(global0.d.a, var_1.d.d, Struct_1(global2.a, 56022u), Struct_2(global2.a, vec3<u32>(u_input.a.x, var_1.d.a.b, global1.d.b.x), global1.d.c, var_1.b.xz), vec3<i32>(-2147483647i, 1i, 2147483647i)), global0.e).a, _wgslsmith_add_i32(u_input.c, var_1.e)).a.d.b.x, min(_wgslsmith_sub_u32(global3.x, 1u), 3553u), global1.b.b.x), vec3<f32>(1442f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(641f * 957f)), _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(global1.d.c + var_1.b.x)), global2.a || true)), global1.b.c), true, Struct_3(Struct_1(global2.a, 1u), func_1(vec3<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(11735i, global1.e.x, global1.e.x, 4725i), vec4<i32>(global0.e, -2147483647i, global1.e.x, global0.e)), ~global0.e), var_1.d, global0.d, 0i).a.d, global1.a, global0.d.b, global1.e), 31095i);
    global2 = Struct_1(global1.b.a, ~global1.d.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(0i, var_1.a.zz, global0.d.e.x);
}

