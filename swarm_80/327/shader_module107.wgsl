struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 5>;

var<private> global1: vec4<i32> = vec4<i32>(0i, 1i, -24128i, -4010i);

var<private> global2: array<vec2<bool>, 29>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1978f)))))) - _wgslsmith_f_op_f32(-211f - -2293f)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), var_0.a, 425f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))) - -295f));
    let var_2 = 31322u;
    let var_3 = -1i;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1469f, 427f, -3206f, var_0.a), vec4<f32>(-1192f, 1944f, var_1.x, var_1.x), true)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-318f, var_1.x, 727f, -1245f)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-603f, 1000f, var_1.x, var_0.a) * vec4<f32>(-1000f, -1000f, 156f, var_0.a)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-636f, var_0.a, 861f, 261f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1156f, -1125f, -310f, var_1.x) - vec4<f32>(var_0.a, -204f, 659f, var_1.x)))))));
    return -21812i;
}

fn func_2() -> u32 {
    global1 = _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, ~u_input.c, firstLeadingBit(global1.x), func_3()), vec4<i32>(firstTrailingBit(-global1.x), _wgslsmith_sub_i32(global1.x, 1i) << ((65195u >> (u_input.b.x % 32u)) % 32u), -_wgslsmith_mod_i32(u_input.c, global1.x), 0i)) << (u_input.b % vec4<u32>(32u));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-417f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1747f + 499f)))), _wgslsmith_f_op_f32(-1155f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -152f)))));
    let var_1 = u_input.a;
    global2 = array<vec2<bool>, 29>();
    return ~1u;
}

fn func_1(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32) -> i32 {
    let var_0 = func_2();
    let var_1 = vec2<i32>(0i, -65671i);
    global0 = array<vec3<i32>, 5>();
    let var_2 = -1718f;
    var var_3 = vec3<bool>(all(vec2<bool>(false, true)), true, false);
    return i32(-1i) * -_wgslsmith_div_i32(var_1.x, _wgslsmith_add_i32(var_1.x, select(2613i, var_1.x, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.yw;
    var var_1 = all(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, var_0.x), 29u)]);
    var_0 = ~(~u_input.b.xz);
    var var_2 = firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, global1.x) | global1.wy, global1.yz));
    let var_3 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(max(~vec4<i32>(17519i, -2147483647i, -1i, global1.x), ~(vec4<i32>(u_input.c, var_2.x, u_input.c, var_2.x) | vec4<i32>(-1i, var_2.x, 11970i, 20699i))), vec4<i32>(37958i, func_1(Struct_3(1568f), vec2<u32>(var_0.x, 1u), -1178f) >> (_wgslsmith_div_u32(4294967295u, u_input.a) % 32u), -1i, -1i)), firstLeadingBit(~(~(~vec4<i32>(19230i, var_2.x, global1.x, var_2.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.x, firstTrailingBit(var_0.x), 1u));
}

