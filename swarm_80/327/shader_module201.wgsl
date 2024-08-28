struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(8228i, -44106i, 0i, -29029i);

var<private> global1: array<Struct_1, 3>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    global0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, countOneBits(-25872i), ~_wgslsmith_mult_i32(global0.x, 45503i), global0.x), vec4<i32>(_wgslsmith_mult_i32(global0.x, ~global0.x), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(-16951i, global0.x), _wgslsmith_add_i32(-2147483647i, global0.x)), 33551i, 12152i));
    global1 = array<Struct_1, 3>();
    global1 = array<Struct_1, 3>();
    var var_0 = select(1u, ~u_input.a.x, u_input.a.x >= _wgslsmith_mult_u32(~(~u_input.a.x), max(1u, arg_0.x)));
    let var_1 = vec3<bool>(all(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)), false, false);
    return ~firstLeadingBit(select(global0.x, -2958i, true));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = vec4<i32>(firstLeadingBit(-52062i & min(global0.x, ~global0.x)), ~func_3(select(arg_3.a.yz, _wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, u_input.a.x)), select(true, false, false))), -global0.x, _wgslsmith_sub_i32(-_wgslsmith_add_i32(-1i, global0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-29947i, 0i, 2147483647i, 31773i), vec4<i32>(global0.x, 32533i, global0.x, -18464i)) >> (~vec4<u32>(1u, arg_3.a.x, 20463u, arg_3.a.x) % vec4<u32>(32u)), -(~vec4<i32>(global0.x, global0.x, 2147483647i, global0.x)))));
    var var_1 = vec2<bool>(false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(167f * arg_2)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), arg_2))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 654f))))));
    let var_2 = global1[_wgslsmith_index_u32(reverseBits(~_wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u >> (arg_1 % 32u), 42562u), arg_3.a.x)), 3u)];
    let var_3 = var_0.xzz;
    let var_4 = Struct_1(~(~(~vec4<u32>(1u, 1u, 0u, 4294967295u)) >> (max(arg_3.a, max(var_2.a, var_2.a)) % vec4<u32>(32u))));
    return arg_3.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: i32) -> Struct_1 {
    var var_0 = Struct_1(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(687f + 1762f), -413f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-278f, 2310f) - vec2<f32>(1758f, -146f)))), 20578u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-349f * 603f), 177f) - _wgslsmith_f_op_f32(round(-1584f))), global1[_wgslsmith_index_u32(~((23380u >> (0u % 32u)) | ~arg_1), 3u)]));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -352f);
    return Struct_1(min(~(select(vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(var_0.a.x, arg_1, u_input.a.x, arg_1), vec4<bool>(false, false, true, false)) << (var_0.a % vec4<u32>(32u))), ~vec4<u32>(var_0.a.x, ~arg_1, abs(var_0.a.x), _wgslsmith_add_u32(u_input.a.x, arg_1))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_1.a.x;
    var var_1 = abs(-2147483647i) >> ((func_1(~vec4<i32>(global0.x, global0.x, 0i, global0.x), arg_2.a.x, _wgslsmith_sub_i32(-11849i, ~arg_0.x)).a.x >> (4294967295u % 32u)) % 32u);
    let var_2 = func_1(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), ~vec4<i32>(arg_0.x, 18142i, -2147483647i, global0.x))), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(1u, arg_2.a.x), ~1u), ~min(max(global0.x, 77917i), max(-2147483647i, 15961i))).a.zx ^ ~max(u_input.a.zx, vec2<u32>(1u, 1u));
    var var_3 = 1484f;
    return func_1(reverseBits(firstLeadingBit(~(vec4<i32>(-1i, -2147483647i, -1i, arg_0.x) & vec4<i32>(0i, -23852i, arg_0.x, global0.x)))), 73812u, 26827i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 3>();
    let var_0 = (true & all(select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true)))) | true;
    var var_1 = func_4(~max(global0.zxy >> (u_input.a % vec3<u32>(32u)), vec3<i32>(-36413i, global0.x, global0.x)) | firstTrailingBit(global0.wzy >> (firstLeadingBit(u_input.a) % vec3<u32>(32u))), func_1(~(-(vec4<i32>(global0.x, global0.x, 1i, global0.x) | vec4<i32>(2147483647i, global0.x, 0i, -2147483647i))), u_input.a.x, ~global0.x), Struct_1(~vec4<u32>(max(u_input.a.x, 1u), u_input.a.x, u_input.a.x | 0u, 33323u | u_input.a.x)));
    let var_2 = func_4(vec3<i32>(_wgslsmith_sub_i32(global0.x, global0.x), global0.x, ~_wgslsmith_dot_vec2_i32(max(vec2<i32>(0i, global0.x), vec2<i32>(19801i, global0.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, 0i), vec2<i32>(global0.x, 1i)))), Struct_1(~vec4<u32>(select(11317u, 0u, false), var_1.a.x, ~10179u, 59128u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~70275u, ~0u), 3u)]);
    var var_3 = Struct_1(firstLeadingBit(vec4<u32>(24600u, var_1.a.x | 42634u, 5711u, ~var_2.a.x)) & ~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(4294967295u, 1u, var_2.a.x, var_2.a.x)), max(vec4<u32>(u_input.a.x, var_2.a.x, u_input.a.x, 1u), var_2.a)));
    global0 = vec4<i32>(_wgslsmith_mult_i32(~(-21542i), abs(-global0.x)), abs(global0.x), global0.x, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_2.a.x, 0u, 57073u, _wgslsmith_div_u32(abs(var_1.a.x), 4294967295u)), global0.zw);
}

