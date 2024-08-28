struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: Struct_3 = Struct_3(922f, 0u);

var<private> global2: Struct_4;

var<private> global3: array<Struct_1, 4>;

var<private> global4: array<vec4<u32>, 12>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = -34611i;
    let var_1 = global0[_wgslsmith_index_u32(global1.b & ~(~select(abs(9676u), ~u_input.a.x, false)), 25u)];
    let var_2 = vec2<u32>(4174u, firstLeadingBit(countOneBits(20220u)));
    let var_3 = Struct_4(global2.a, firstTrailingBit(-global2.b), global1.b, _wgslsmith_dot_vec2_u32(u_input.a.zx, vec2<u32>(_wgslsmith_sub_u32(var_2.x, 7102u), 0u) << (_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(var_2, var_2), u_input.a.yx) % vec2<u32>(32u))));
    var var_4 = var_1.a.xxz;
    return vec4<bool>(284f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(811f - _wgslsmith_f_op_f32(trunc(var_3.a.a))) * var_3.a.a), !all(select(var_1.a, var_1.a, var_4.x)) != var_4.x, all(vec4<bool>(false, false, var_4.x, all(vec3<bool>(false, true, true)))), true);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> u32 {
    global1 = Struct_3(_wgslsmith_f_op_f32(-global1.a), 49324u);
    global1 = arg_0;
    global4 = array<vec4<u32>, 12>();
    let var_0 = _wgslsmith_f_op_f32(-global2.a.a);
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(true, true), !any(func_3()));
    return 42772u;
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    global1 = arg_0.a;
    var var_0 = select(~(~(~u_input.a)), u_input.a << (vec3<u32>(reverseBits(_wgslsmith_mult_u32(22904u, 1u)), ~1399u, ~func_2(global2.a, 0i, 5618u)) % vec3<u32>(32u)), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), select(func_3().xxx, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), true)));
    return select(select(vec4<bool>(true, _wgslsmith_mult_i32(-2147483647i, global2.b) != _wgslsmith_div_i32(34699i, -29793i), all(vec2<bool>(true, true)), false), !func_3(), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), any(vec4<bool>(true, false, true, true)))), func_3(), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~(~0u | global2.a.b), global2.d, 0u, ~15469u) | (vec4<u32>(11008u, _wgslsmith_clamp_u32(u_input.a.x, global2.c ^ 1u, global1.b ^ 55281u), 21425u, ~(~8236u)) >> (select(_wgslsmith_div_vec4_u32(~global4[_wgslsmith_index_u32(1u, 12u)], ~global4[_wgslsmith_index_u32(32583u, 12u)]), reverseBits(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(70618u, 15851u, 1u, global2.a.b), global4[_wgslsmith_index_u32(u_input.a.x, 12u)]), 12u)]), select(func_1(Struct_4(global2.a, -2147483647i, u_input.a.x, 0u)), vec4<bool>(true, false, false, true), true)) % vec4<u32>(32u)));
    var_0 = global4[_wgslsmith_index_u32(~abs(min(10233u, ~(~global2.c))), 12u)];
    var_0 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(79283u, global2.c, 4294967295u, 96608u), global4[_wgslsmith_index_u32(5586u, 12u)]) & reverseBits(global4[_wgslsmith_index_u32(u_input.a.x, 12u)]), ~firstLeadingBit(vec4<u32>(var_0.x, u_input.a.x, global2.d, global1.b))), firstTrailingBit(global4[_wgslsmith_index_u32(55103u, 12u)]));
    var var_1 = !any(!func_1(Struct_4(Struct_3(global1.a, global2.d), 2517i, var_0.x, global1.b)).xyw);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(~67910u, ~0u) << (var_0.yy % vec2<u32>(32u))), vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(min(min(var_0.zz, vec2<u32>(var_0.x, u_input.a.x)), var_0.zx), u_input.a.zx))), 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_mod_vec2_i32(vec2<i32>(~global2.b, -32034i), -_wgslsmith_sub_vec2_i32(vec2<i32>(-25821i, 2147483647i), vec2<i32>(global2.b, 0i)))));
}

