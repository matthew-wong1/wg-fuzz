struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
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

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 1>;

var<private> global3: array<f32, 11> = array<f32, 11>(-516f, 1011f, 476f, -857f, 358f, -1000f, 460f, 1071f, 440f, -545f, -294f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: bool) -> u32 {
    return ~(~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) >> (u_input.a.x % 32u);
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_0), -429f), vec2<f32>(_wgslsmith_f_op_f32(-410f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(116f)) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.a.x, 11u)] - -1038f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(4847u, 11u)] + arg_0)) + 1f)));
    return _wgslsmith_clamp_vec2_u32(u_input.a.yx, ~vec2<u32>(u_input.a.x << (func_2(global1.zz, vec2<bool>(global0.x, global1.x), true) % 32u), ~u_input.a.x), _wgslsmith_add_vec2_u32(u_input.a.xx, u_input.a.yy));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_i32(~(firstLeadingBit(vec4<i32>(-2147483647i, 21726i, -3900i, -1i)) | select(vec4<i32>(u_input.c, 2147483647i, -2147483647i, -34369i), vec4<i32>(1i, -22455i, 24659i, u_input.b.x), true)) >> (_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.a.x, u_input.a.x, 12286u, u_input.a.x)), vec4<u32>(u_input.a.x, ~4294967295u, 52247u, u_input.a.x)) % vec4<u32>(32u)), vec4<i32>(2147483647i, u_input.b.x, select(~(-u_input.c), -9612i, !all(vec4<bool>(false, true, global1.x, false))), _wgslsmith_add_i32(min(u_input.b.x, _wgslsmith_div_i32(-33032i, 1i)), max(u_input.c | u_input.b.x, -u_input.b.x))), vec4<i32>(~(-15790i) ^ _wgslsmith_dot_vec3_i32(u_input.b | vec3<i32>(u_input.c, u_input.b.x, u_input.c), vec3<i32>(-85107i, 1i, u_input.b.x)), firstTrailingBit(abs(0i) ^ (u_input.b.x | 6357i)), _wgslsmith_sub_i32(2147483647i, ~firstTrailingBit(-52262i)), -u_input.c));
    var var_1 = arg_0;
    var var_2 = any(select(!vec4<bool>(false, !global0.x, all(global0.yy), global1.x), !(!(!vec4<bool>(arg_1.a, arg_1.a, global1.x, false))), !select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(true, false, global1.x, global1.x), !global1.x)));
    var var_3 = max(firstLeadingBit(vec3<i32>(i32(-1i) * -u_input.c, max(_wgslsmith_mult_i32(72433i, -4236i), -78622i), var_0.x)), ~u_input.b);
    var var_4 = !global0.zy;
    return global1.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> u32 {
    var var_0 = true;
    var var_1 = global3[_wgslsmith_index_u32(~u_input.a.x, 11u)];
    var var_2 = !(!(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1363f, -340f)), Struct_2(arg_2.a)) & !any(global1.xy)));
    let var_3 = global3[_wgslsmith_index_u32((firstLeadingBit(func_1(-216f).x) & _wgslsmith_clamp_u32(u_input.a.x, ~u_input.a.x, ~(~arg_1.a.x))) >> (~u_input.a.x % 32u), 11u)];
    var var_4 = Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, 27432u), ~arg_1.a.x, 4685u, arg_1.a.x), arg_1.a, arg_1.a), vec3<i32>(0i, u_input.b.x, -17288i), vec3<bool>(any(!arg_1.c), arg_2.a, false));
    return min(4294967295u, var_4.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yz, _wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(4294967295u, u_input.a.x)) >> (func_1(-1363f) % vec2<u32>(32u))), ~select(func_1(global3[_wgslsmith_index_u32(84610u, 11u)]), vec2<u32>(u_input.a.x, u_input.a.x), global0.x)), vec2<u32>(func_4(Struct_2(func_3(vec2<f32>(362f, -201f), Struct_2(true))), Struct_1(vec4<u32>(u_input.a.x, 0u, 31959u, 42890u), vec3<i32>(u_input.c, 0i, -64798i), global1.zwx), Struct_2(false)), u_input.a.x));
    var var_1 = global2[_wgslsmith_index_u32(u_input.a.x, 1u)];
    let var_2 = true;
    var var_3 = -abs(var_1.b);
    let var_4 = Struct_2(all(vec3<bool>(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(0u, 11u)])) >= _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(1u, 11u)])), var_1.c.x, true)));
    let var_5 = global2[_wgslsmith_index_u32(~(_wgslsmith_div_u32(u_input.a.x, ~(6798u << (u_input.a.x % 32u))) ^ reverseBits(39751u)), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(firstTrailingBit(u_input.a.x)), reverseBits(u_input.a.x), 46112u), 1u, min(70328u, ~28839u)));
}

