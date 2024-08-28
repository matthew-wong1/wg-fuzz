struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<bool>(true, false), false, -20307i, false), Struct_1(vec2<bool>(false, true), true, 0i, true), Struct_1(vec2<bool>(false, false), false, 31110i, false), Struct_1(vec2<bool>(false, true), false, 1i, true), Struct_1(vec2<bool>(true, true), false, -15266i, false), Struct_1(vec2<bool>(false, false), true, 2147483647i, true), Struct_1(vec2<bool>(false, false), false, -68653i, false), Struct_1(vec2<bool>(false, true), false, 0i, true), Struct_1(vec2<bool>(false, true), true, 8896i, true), Struct_1(vec2<bool>(true, false), false, 2147483647i, false), Struct_1(vec2<bool>(true, false), true, -26085i, false), Struct_1(vec2<bool>(true, true), true, 57081i, false), Struct_1(vec2<bool>(true, true), false, 1i, false), Struct_1(vec2<bool>(false, true), true, -35639i, false), Struct_1(vec2<bool>(true, false), false, 2147483647i, true), Struct_1(vec2<bool>(false, false), false, -8462i, true), Struct_1(vec2<bool>(true, true), false, 5717i, true));

var<private> global1: f32;

var<private> global2: array<i32, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1() -> i32 {
    global0 = array<Struct_1, 17>();
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(902f, 703f) - _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -191f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1747f, -867f) + _wgslsmith_f_op_f32(f32(-1f) * -391f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3049f))) * -241f)));
    return -u_input.c;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(430f, 191f) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-3098f, 179f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1165f, -1621f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1019f, -364f) * vec2<f32>(-804f, 1167f))))))));
    global0 = array<Struct_1, 17>();
    let var_1 = Struct_2(_wgslsmith_dot_vec2_i32(select(reverseBits(-vec2<i32>(u_input.c, -2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, -22290i), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], u_input.b)), vec2<bool>(true, true)), firstLeadingBit(vec2<i32>(firstLeadingBit(global2[_wgslsmith_index_u32(1u, 1u)]), 1i))), min(select(vec2<u32>(16082u, u_input.a), vec2<u32>(u_input.a, u_input.a), true) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a) ^ firstTrailingBit(vec2<u32>(4294967295u, u_input.a))) >> (firstTrailingBit(vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(13160u, u_input.a), u_input.a), 1u), ~4294967295u), ~(~(-vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 1u)], -44584i, u_input.c, u_input.c))), max(reverseBits(-abs(vec4<i32>(-14212i, -1i, u_input.c, 0i))), vec4<i32>(0i, _wgslsmith_div_i32(~9097i, ~0i), 2147483647i, _wgslsmith_mult_i32(u_input.b & -44457i, ~(-1i)))));
    var var_2 = var_1;
    global1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-517f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-235f))))), var_2.b.x >= ~(4294967295u >> (u_input.a % 32u))))));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), var_0.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> vec3<u32> {
    global1 = _wgslsmith_f_op_f32(func_3());
    global1 = arg_1;
    global0 = array<Struct_1, 17>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, arg_0.x), 17u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -1693f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2101f, -449f)) + arg_1)), arg_1));
    return ~vec3<u32>(~_wgslsmith_mult_u32(3037u, u_input.a), _wgslsmith_div_u32(abs(arg_0.x), u_input.a), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-firstLeadingBit(-39382i), 16939i), _wgslsmith_div_vec4_i32(countOneBits(firstLeadingBit(vec4<i32>(0i, -3468i, u_input.b, 2147483647i))), vec4<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.b, -34206i, 68987i, -7818i), vec4<i32>(38041i, global2[_wgslsmith_index_u32(u_input.a, 1u)], 1i, -1i), false), vec4<i32>(21359i, global2[_wgslsmith_index_u32(u_input.a, 1u)], -18442i, 0i) & vec4<i32>(0i, -1i, u_input.b, global2[_wgslsmith_index_u32(u_input.a, 1u)])), 1i, _wgslsmith_sub_i32(min(global2[_wgslsmith_index_u32(u_input.a, 1u)], global2[_wgslsmith_index_u32(1u, 1u)]), u_input.c), _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, u_input.c), u_input.b & u_input.b))), global2[_wgslsmith_index_u32(u_input.a ^ _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), ~u_input.a, ~4294967295u, ~5691u), _wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)), ~vec4<u32>(u_input.a, 0u, u_input.a, u_input.a))), 1u)], min(vec2<i32>(2147483647i, -func_1()), min(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, -8848i), vec2<i32>(global2[_wgslsmith_index_u32(39119u, 1u)], u_input.b)), ~vec2<i32>(u_input.b, -20407i)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, -35412i), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], u_input.c))))), vec3<u32>(u_input.a, u_input.a, 20774u) | (~_wgslsmith_div_vec3_u32(vec3<u32>(37448u, 62852u, 24084u), vec3<u32>(53559u, 38715u, 3799u)) >> (func_2(abs(vec4<u32>(u_input.a, 18905u, 64219u, u_input.a)), -129f) % vec3<u32>(32u))));
}

