struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec4<f32>(-1125f, -556f, -858f, -909f), 0i), Struct_2(vec4<f32>(2603f, 706f, 1258f, -990f), 0i), Struct_2(vec4<f32>(343f, 1000f, -2731f, -557f), -9943i), Struct_2(vec4<f32>(-2463f, 1107f, 651f, 1000f), 21098i));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<Struct_2, 4>();
    var var_0 = -(_wgslsmith_mult_i32(select(-50488i, u_input.a, true), ~u_input.a) & -(~(~(-1i))));
    var var_1 = ~70073u;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(515f)), 244f, _wgslsmith_f_op_f32(266f * -1000f), _wgslsmith_f_op_f32(min(384f, 199f)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(118f * -1004f), 638f, _wgslsmith_f_op_f32(sign(684f)), -937f) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -498f), _wgslsmith_f_op_f32(sign(-1841f)), _wgslsmith_f_op_f32(f32(-1f) * -1456f), _wgslsmith_f_op_f32(371f - 715f)))), u_input.a);
    let var_3 = !arg_0;
    return select(~_wgslsmith_dot_vec4_u32(~vec4<u32>(81526u, 1490u, 0u, 4294967295u), vec4<u32>(1u, 46343u, 71537u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 75951u, 4294967295u)))), 1u, reverseBits(~(~30760u)) != _wgslsmith_mult_u32(select(~0u, 4294967295u, -26111i <= var_2.b), ~1u));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: f32) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), firstTrailingBit(~4294967295u))), 4u)];
    global0 = array<Struct_2, 4>();
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~4294967295u, min(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 4294967295u, 778u, 13910u), ~vec4<u32>(0u, 34572u, 40274u, 24912u)), 26768u)), 4u)];
    global0 = array<Struct_2, 4>();
    var var_2 = global0[_wgslsmith_index_u32(1u << (_wgslsmith_sub_u32(28516u, countOneBits(~1u << (func_3(false) % 32u))) % 32u), 4u)];
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~1u), _wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(~firstTrailingBit(65307u), 1u))), 4u)];
}

fn func_4(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_2) -> vec3<i32> {
    global0 = array<Struct_2, 4>();
    let var_0 = arg_2.a.x;
    let var_1 = func_2(vec2<f32>(var_0, arg_1), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_2.b, select(-21968i, countOneBits(43110i), true)), vec2<i32>(~(-1i), _wgslsmith_mult_i32(u_input.a, -u_input.a)), -_wgslsmith_mult_vec2_i32(~vec2<i32>(-9557i, arg_2.b), vec2<i32>(arg_2.b, 32530i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * -1000f) + _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
    var var_2 = arg_2;
    var var_3 = i32(-1i) * -1i;
    return vec3<i32>(-2147483647i, _wgslsmith_sub_i32(firstTrailingBit(i32(-1i) * -4835i), -43037i | (func_2(var_2.a.yw, vec2<i32>(u_input.a, u_input.a), var_2.a.x).b << ((80976u << (1u % 32u)) % 32u))), var_1.b);
}

fn func_1(arg_0: u32) -> vec3<i32> {
    global0 = array<Struct_2, 4>();
    global0 = array<Struct_2, 4>();
    return -(~func_4(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), _wgslsmith_f_op_f32(abs(665f)), func_2(vec2<f32>(293f, -707f), vec2<i32>(u_input.a, u_input.a), 999f))) << (vec3<u32>(~(~(~arg_0)), reverseBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(arg_0, 38486u, 0u), false), vec3<u32>(arg_0, 0u, 0u))), _wgslsmith_sub_u32(arg_0, arg_0)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(firstLeadingBit(1u)), 1u, 32722u);
    global0 = array<Struct_2, 4>();
    let var_1 = ~(~(~(~(~vec4<u32>(var_0.c, var_0.b, var_0.c, var_0.b)))));
    let var_2 = -347f;
    var var_3 = global0[_wgslsmith_index_u32(var_1.x, 4u)];
    var_3 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(~var_1.wyy, vec3<u32>(4294967295u, var_1.x, 4294967295u)), vec3<u32>(max(1u, 1u & var_1.x), 35676u, var_1.x | ~1u)), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), max(vec2<u32>(var_1.x, var_1.x), var_1.yz)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 17538u, var_1.x), vec3<u32>(1u, 0u, 57580u)) & ~var_1.x), 89554u), 4u)];
    var var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, var_2, var_2, 219f))), u_input.a);
    var var_5 = reverseBits(_wgslsmith_div_vec2_i32(max(_wgslsmith_sub_vec2_i32(func_4(vec3<bool>(false, true, true), var_4.a.x, Struct_2(vec4<f32>(var_2, 476f, 638f, 1426f), var_3.b)).yy, _wgslsmith_mult_vec2_i32(var_0.a.xz, var_0.a.zx)), var_0.a.xx), -(-vec2<i32>(-2147483647i, u_input.a) >> (var_1.wy % vec2<u32>(32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-500f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.a.x)) + _wgslsmith_f_op_f32(round(var_2)))))));
}

