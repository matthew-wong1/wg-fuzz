struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(false), -649f, Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), 203f, Struct_1(true), Struct_1(true)), Struct_2(Struct_1(true), -1000f, Struct_1(false), Struct_1(true)), Struct_2(Struct_1(true), -481f, Struct_1(true), Struct_1(false)), Struct_2(Struct_1(true), 535f, Struct_1(false), Struct_1(true)));

var<private> global1: Struct_2 = Struct_2(Struct_1(true), 1000f, Struct_1(true), Struct_1(true));

var<private> global2: array<Struct_1, 9>;

var<private> global3: u32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<u32>) -> vec2<u32> {
    let var_0 = global0[_wgslsmith_index_u32(0u >> (~(~(u_input.a >> (0u % 32u))) % 32u), 5u)];
    let var_1 = global0[_wgslsmith_index_u32(arg_2.x, 5u)];
    global2 = array<Struct_1, 9>();
    global2 = array<Struct_1, 9>();
    var var_2 = vec4<bool>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_2), ~vec2<u32>(arg_2.x, 35057u))) <= ~(~(~u_input.a)), global1.c.a, false, var_1.d.a);
    return arg_2 << (arg_2 % vec2<u32>(32u));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    var var_0 = ~(~(~(~func_3(vec2<bool>(false, global1.a.a), arg_1, vec2<u32>(1u, 3960u)))));
    global3 = ~u_input.a;
    var var_1 = vec3<u32>(var_0.x, _wgslsmith_mult_u32(~1u, abs(~u_input.a) & 96508u), firstLeadingBit(0u));
    var var_2 = firstTrailingBit(arg_2);
    var var_3 = Struct_2(Struct_1(all(select(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(true, false, true), vec3<bool>(global1.a.a, true, false)), !vec3<bool>(false, true, global1.c.a), !arg_0))), global1.b, Struct_1(arg_0), Struct_1(any(vec3<bool>(global1.c.a, false, !arg_0))));
    return var_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = vec2<u32>(~firstTrailingBit(countOneBits(4294967295u)), countOneBits(~4294967295u));
    global3 = ~_wgslsmith_sub_u32(reverseBits(u_input.a | 1u) << ((19111u ^ (u_input.a << (22143u % 32u))) % 32u), 1347u);
    var var_1 = 25567u;
    global3 = ~func_2(arg_0.d.a, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~u_input.b.x, 20666i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -11053i), vec4<i32>(-100697i, -1i, -8220i, 12629i)), ~vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x)), _wgslsmith_mult_i32(u_input.b.x, -2147483647i)), _wgslsmith_sub_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 2147483647i), vec4<i32>(u_input.b.x, 32697i, -2147483647i, 33379i), vec4<i32>(0i, u_input.b.x, 14730i, u_input.b.x))), vec4<i32>(u_input.b.x, u_input.b.x, firstTrailingBit(2147483647i), ~2147483647i)));
    var_1 = 9404u;
    return Struct_1(true);
}

fn func_1(arg_0: bool, arg_1: u32) -> StorageBuffer {
    let var_0 = 2425i;
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(878f + global1.b) - _wgslsmith_f_op_f32(-global1.b)) - global1.b), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(741f, 316f)), -1198f))))));
    global1 = global0[_wgslsmith_index_u32(16776u, 5u)];
    let var_2 = global1.b;
    let var_3 = func_4(global0[_wgslsmith_index_u32((func_2(var_0 < -8205i, min(3172i, -2147483647i), vec4<i32>(1i, u_input.b.x, 1i, -1538i) ^ vec4<i32>(var_0, u_input.b.x, var_0, u_input.b.x)) >> (~(1287u & u_input.a) % 32u)) << (~arg_1 % 32u), 5u)], vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.b)) * _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b * global1.b)))));
    return StorageBuffer(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(trunc(-813f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * 233f)))), func_2(any(!vec4<bool>(false, arg_0, arg_0, true)) & any(!vec3<bool>(false, arg_0, global1.a.a)), 1i | ~min(-2147483647i, u_input.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -20569i, 22722i) | vec4<i32>(u_input.b.x, 7741i, u_input.b.x, var_0), vec4<i32>(u_input.b.x, var_0, var_0, 2147483647i) >> (vec4<u32>(u_input.a, 0u, 0u, arg_1) % vec4<u32>(32u))) >> (vec4<u32>(4294967295u, ~12983u, ~u_input.a, ~4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, -985f, -1171f, global1.b)) + vec4<f32>(-133f, global1.b, global1.b, global1.b)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, max(_wgslsmith_clamp_u32(103000u, 0u, 106797u), ~u_input.a)), ~(~vec2<u32>(u_input.a, u_input.a) ^ ~vec2<u32>(0u, 4294967295u)) ^ countOneBits(~(~vec2<u32>(u_input.a, 13419u))));
    let x = u_input.a;
    s_output = func_1(global1.d.a, u_input.a);
}

