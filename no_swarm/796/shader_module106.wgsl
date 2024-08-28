struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: vec3<i32> = vec3<i32>(0i, i32(-2147483648), -1i);

var<private> global2: Struct_1 = Struct_1(vec4<u32>(4294967295u, 115591u, 1u, 4294967295u), 795f, vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec2<u32>(0u, 36090u));

var<private> global3: i32;

var<private> global4: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>) -> vec4<u32> {
    var var_0 = u_input.d.x;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2057f) * arg_1.x);
    var var_2 = vec4<bool>(any(vec4<bool>(true, true, true, true)), all(select(vec3<bool>(false, true, select(true, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, true))), vec3<bool>(true, true, true))), true, !(!all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false))));
    let var_3 = vec4<f32>(_wgslsmith_div_f32(global2.b, _wgslsmith_f_op_f32(select(arg_1.x, -1000f, true))), 1000f, global2.b, _wgslsmith_f_op_f32(454f - _wgslsmith_f_op_f32(-arg_1.x)));
    var var_4 = global0[_wgslsmith_index_u32(1u, 32u)];
    return u_input.e;
}

fn func_2() -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~select(global2.a.yyx, firstTrailingBit(select(vec3<u32>(0u, u_input.b, 4294967295u), u_input.c, false)), any(vec2<bool>(true, true))), global2.a.yxx), 32u)];
    var var_1 = -vec3<i32>(u_input.a, -(-1i ^ abs(var_0.c.x)), var_0.c.x);
    var_1 = u_input.d;
    var var_2 = Struct_1(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(4294967295u, var_0.d.x, var_0.a.x, u_input.b)), var_0.a), (global2.a | global2.a) << (~vec4<u32>(4294967295u, 1u, 1u, u_input.e.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))), vec3<i32>(global2.c.x, select(global1.x, global2.c.x, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), true))), -2147483647i), var_0.d);
    let var_3 = 1u;
    return Struct_1(abs(func_3(var_0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, 833f, -1931f, -785f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(458f, -825f, var_0.b, 270f))))), -664f, vec3<i32>(-(~(-1i)), ~(-32460i), -global1.x), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(3947u, u_input.e.x), var_0.a.yx), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(54575u, 1u)), ~u_input.c.yx)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, global2.d.x, 5225u), _wgslsmith_div_vec3_u32(u_input.e.xwz, u_input.c)), 2727u, _wgslsmith_mult_u32(global2.a.x, _wgslsmith_add_u32(6742u, global2.d.x) << (214u % 32u)), ~(abs(4294967295u) & _wgslsmith_add_u32(0u, global2.d.x))), global2.b, global2.c, u_input.e.yw);
    global4 = true;
    let var_1 = func_2();
    var var_2 = var_1;
    var_0 = Struct_1(vec4<u32>(abs(~53031u), u_input.e.x, abs(var_1.d.x), _wgslsmith_add_u32(abs(var_2.a.x) << (select(var_0.d.x, var_0.a.x, arg_1) % 32u), _wgslsmith_sub_u32(global2.d.x, max(58394u, 28401u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-457f, global2.b))))), -global2.c, ~((firstTrailingBit(u_input.e.ww) | firstLeadingBit(vec2<u32>(var_2.d.x, 1u))) & var_1.d));
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    global1 = u_input.d;
    var var_0 = !select(true, all(vec3<bool>(false, true, true)), true);
    var var_1 = reverseBits(_wgslsmith_sub_i32(i32(-1i) * -(~global2.c.x), i32(-1i) * -12825i));
    var var_2 = func_1(arg_2.c.x, _wgslsmith_div_f32(-417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))) < _wgslsmith_f_op_f32(f32(-1f) * -1505f), 2147483647i);
    let var_3 = arg_1;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec4<bool>(true, true, global2.b <= global2.b, 54232u != global2.a.x)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true), true), select(!(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, global2.c.x >= -35160i, false)), func_4(~global2.c.x, func_1(global2.c.x, false, u_input.d.x), func_2()) & select(all(vec2<bool>(true, true)), all(vec2<bool>(false, false)), global2.b == global2.b)));
    let var_1 = vec4<i32>(global1.x & abs(-66018i), firstTrailingBit(-(u_input.d.x << (~global2.a.x % 32u))), firstTrailingBit(max(-global1.x & 7955i, 10798i)), 1i);
    global2 = global0[_wgslsmith_index_u32(11876u, 32u)];
    var var_2 = Struct_1(global2.a, _wgslsmith_f_op_f32(-global2.b), reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a) ^ reverseBits(vec3<i32>(2147483647i, global1.x, global2.c.x) | var_1.zzx)), ~vec2<u32>(global2.a.x, ~_wgslsmith_sub_u32(4294967295u, u_input.c.x)));
    var var_3 = select(var_0.x, true, !var_0.x) || all(vec2<bool>((var_0.x == var_0.x) | !var_0.x, select(func_4(1i, Struct_1(u_input.e, 430f, u_input.d, vec2<u32>(4294967295u, global2.a.x)), Struct_1(vec4<u32>(global2.d.x, u_input.e.x, 39799u, u_input.e.x), var_2.b, global2.c, vec2<u32>(var_2.a.x, var_2.d.x))), var_0.x, true)));
    var var_4 = func_2().a.x;
    let var_5 = func_2();
    let var_6 = var_5.c.zy;
    let var_7 = max(vec2<u32>(_wgslsmith_div_u32(global2.d.x, var_2.a.x), ~var_5.a.x), u_input.c.zx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - -477f), _wgslsmith_f_op_f32(f32(-1f) * -413f)))));
}

