struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 22> = array<u32, 22>(4294967295u, 0u, 54509u, 44164u, 4294967295u, 0u, 48110u, 84829u, 68692u, 112801u, 0u, 0u, 43777u, 0u, 4294967295u, 32614u, 4294967295u, 12325u, 38593u, 28058u, 18198u, 1192u);

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<Struct_1, 13>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_4) -> f32 {
    var var_0 = arg_3.b;
    return var_0.a;
}

fn func_2() -> bool {
    let var_0 = Struct_1(-(~abs(u_input.a) & _wgslsmith_add_i32(u_input.c >> (1u % 32u), u_input.d)));
    let var_1 = Struct_1(_wgslsmith_add_i32(-1i, 0i));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-471f * 1289f), 1000f, false)) - _wgslsmith_f_op_f32(func_3(vec2<i32>(-22779i, 0i), Struct_1(u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_1.a, -93412i), vec3<i32>(var_1.a, var_0.a, u_input.a)), Struct_4(8278u, Struct_3(208f, true, Struct_1(var_0.a))))))));
    let var_3 = any(select(!vec4<bool>(any(vec4<bool>(false, true, true, true)), false, true, true), !vec4<bool>(4294967295u >= u_input.b.x, false, true, all(vec3<bool>(false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, false, all(vec4<bool>(true, true, true, true))), vec4<bool>(all(vec2<bool>(true, false)), false, u_input.b.x <= 4294967295u, true))));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(func_3(vec2<i32>(var_1.a, _wgslsmith_mult_i32(_wgslsmith_add_i32(var_0.a, 2147483647i), -7541i)), global2[_wgslsmith_index_u32(u_input.b.x, 13u)], select(vec3<i32>(countOneBits(var_1.a), var_0.a & var_1.a, -23888i), _wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(53803i, var_1.a, -17724i)), select(vec3<i32>(var_1.a, var_1.a, -49073i), vec3<i32>(var_0.a, 1i, -2147483647i), vec3<bool>(false, var_3, var_3))), var_2 >= var_2), Struct_4(select(62505u, global0[_wgslsmith_index_u32(abs(52236u), 22u)], true), Struct_3(1000f, global0[_wgslsmith_index_u32(1u, 22u)] == global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 22u)], var_0)))), true, var_1);
    return var_4.b;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    global2 = array<Struct_1, 13>();
    var var_0 = !vec3<bool>(true, ~u_input.c <= _wgslsmith_sub_i32(-7479i, -2147483647i), func_2());
    var var_1 = _wgslsmith_f_op_f32(sign(-2606f));
    let var_2 = global1[_wgslsmith_index_u32(~1u, 32u)];
    let var_3 = Struct_2(select(vec3<bool>(arg_2.x, false, arg_2.x), var_2.a, select(!arg_2, vec3<bool>(arg_2.x, true, arg_2.x), arg_2.x)));
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(-7684i, -9388i, arg_1.a, u_input.c) >> (vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 0u, u_input.b.x, 4294967295u) % vec4<u32>(32u)), vec4<i32>(-1i, -1i, u_input.a, arg_1.a), arg_1.a > 1i), countOneBits(-vec4<i32>(arg_1.a, -1i, u_input.d, u_input.d))), _wgslsmith_dot_vec4_i32(select(~vec4<i32>(-2147483647i, 20807i, 2147483647i, arg_1.a), firstTrailingBit(vec4<i32>(41118i, u_input.c, arg_1.a, 17974i)), vec4<bool>(var_3.a.x, var_2.a.x, false, arg_2.x)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.a, 0i, -25197i, arg_1.a), vec4<i32>(14965i, arg_1.a, arg_1.a, arg_1.a)), vec4<i32>(-1i, arg_1.a, u_input.c, 2147483647i), vec4<bool>(var_2.a.x, var_0.x, true, var_3.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(1u, 13u)];
    let var_1 = Struct_3(-253f, true, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-932f, -489f, -1132f), vec3<f32>(216f, 982f, 102f)) + vec3<f32>(-239f, -1000f, -1000f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(124f, -311f, 1000f))))), global2[_wgslsmith_index_u32(u_input.b.x, 13u)], vec3<bool>(true, all(vec4<bool>(true, true, false, true)), all(vec4<bool>(true, false, true, true)))));
    global2 = array<Struct_1, 13>();
    global1 = array<Struct_2, 32>();
    var_0 = Struct_1(countOneBits(abs(var_0.a)));
    let var_2 = ~global0[_wgslsmith_index_u32(59218u, 22u)] == _wgslsmith_mult_u32(0u, ~abs(4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~u_input.b.x, _wgslsmith_dot_vec3_u32(abs(abs(vec3<u32>(0u, 37572u, u_input.b.x))), _wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.b.x, 18167u, 7065u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38332u, 22u)], 22u)], 1u, 1940u)))), var_1.a, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(countOneBits(18862u), u_input.b.x >> (4294967295u % 32u), u_input.b.x), vec3<u32>(24237u, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 22u)], 1u) << (vec3<u32>(53424u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), ~vec3<u32>(0u, 33394u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(62387u, u_input.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], 22u)]), vec3<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 22u)], u_input.b.x, 8355u)))), vec3<f32>(-1204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1339f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1121f + 1029f))), var_1.a), ~0i);
}

