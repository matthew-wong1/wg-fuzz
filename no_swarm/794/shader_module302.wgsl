struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<f32>, 11> = array<vec3<f32>, 11>(vec3<f32>(859f, 991f, -895f), vec3<f32>(-1000f, -880f, -1062f), vec3<f32>(-1297f, 1270f, -632f), vec3<f32>(2133f, -304f, 1639f), vec3<f32>(-1269f, 564f, -1606f), vec3<f32>(-1284f, 1239f, 1000f), vec3<f32>(309f, -1890f, -1128f), vec3<f32>(1267f, -459f, 909f), vec3<f32>(-1000f, -652f, -251f), vec3<f32>(593f, -1261f, 112f), vec3<f32>(-531f, 1270f, -968f));

var<private> global2: vec4<u32> = vec4<u32>(18003u, 61460u, 1u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    let var_0 = Struct_1(global2.x);
    let var_1 = Struct_3(var_0, vec4<f32>(-1000f, arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1000f)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f) + arg_1.x)))), vec3<i32>(~u_input.a, _wgslsmith_add_i32(0i, ~(~u_input.a)), u_input.a));
    global1 = array<vec3<f32>, 11>();
    let var_2 = !(~0u <= global0.x);
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_add_u32(1u, var_0.a), (0u & global0.x) >> (global2.x % 32u)) << (~firstTrailingBit(_wgslsmith_add_vec2_u32(global2.xy, vec2<u32>(80072u, 67116u))) % vec2<u32>(32u)), max(vec2<u32>(var_0.a << (_wgslsmith_mult_u32(36862u, var_0.a) % 32u), _wgslsmith_sub_u32(4294967295u, 14348u) >> (global2.x % 32u)), _wgslsmith_div_vec2_u32(~vec2<u32>(92209u, 0u), global2.wz)));
    return var_1.a.a << (min(_wgslsmith_mod_u32(4294967295u, reverseBits(global2.x)), _wgslsmith_mod_u32(4294967295u, abs(123365u))) % 32u);
}

fn func_2() -> vec3<bool> {
    var var_0 = true;
    var var_1 = true;
    global2 = vec4<u32>(global2.x, 0u, _wgslsmith_mod_u32(global0.x, abs(global2.x)), ~(~4294967295u));
    let var_2 = Struct_1(1u << (((~global0.x | func_3(867f, vec3<f32>(909f, -104f, 1384f))) << (~63326u % 32u)) % 32u));
    var var_3 = countOneBits(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(global2.x, 41774u)) | (vec2<u32>(global2.x, 0u) | (vec2<u32>(global0.x, global2.x) >> (vec2<u32>(43413u, global0.x) % vec2<u32>(32u)))), ~firstLeadingBit(global2.zx)));
    return !(!vec3<bool>(!any(vec4<bool>(true, false, false, true)), true, true));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> vec4<i32> {
    let var_0 = vec4<bool>(arg_2.x, arg_3 == 1u, any(!func_2()), (~global0.x <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(13964u, 0u, global0.x, 0u), vec4<u32>(34376u, global2.x, arg_0.a.a, 0u))) && all(!vec2<bool>(arg_2.x, arg_2.x)));
    global1 = array<vec3<f32>, 11>();
    let var_1 = vec3<f32>(-2022f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1161f + 313f) - _wgslsmith_f_op_f32(-arg_0.b.x)) * _wgslsmith_f_op_f32(max(-241f, _wgslsmith_div_f32(arg_0.b.x, arg_0.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1570f + arg_0.b.x)))));
    return vec4<i32>(arg_0.c.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(arg_0.c), ~arg_0.c >> (~global2.xxw % vec3<u32>(32u))), _wgslsmith_mod_i32(0i, -1i), _wgslsmith_add_i32(1i, ~arg_0.c.x)) >> (min(max(vec4<u32>(arg_1.a, 88735u, global0.x ^ arg_3, ~arg_1.a), min(vec4<u32>(arg_1.a, arg_3, 42089u, 25596u) ^ vec4<u32>(1u, 5079u, 2401u, arg_0.a.a), vec4<u32>(16328u, arg_0.a.a, 4294967295u, global0.x) >> (vec4<u32>(1u, arg_3, 45032u, arg_3) % vec4<u32>(32u)))), vec4<u32>(abs(arg_1.a) >> (2419u % 32u), ~1u, _wgslsmith_mod_u32(~arg_3, 4294967295u), global2.x)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(min(vec4<i32>(-1i) * -vec4<i32>(24407i, u_input.a, u_input.a, u_input.a), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, -11211i, 44148i, u_input.a))) & (-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, -50006i, u_input.a)) | -func_1(Struct_3(Struct_1(1u), vec4<f32>(815f, 1052f, -260f, -697f), vec3<i32>(u_input.a, u_input.a, u_input.a)), Struct_1(global2.x), vec4<bool>(true, false, true, true), 48876u)));
    global0 = ~global2.wx;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1[_wgslsmith_index_u32(4294967295u, 11u)]))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(630f, 703f, -205f) * global1[_wgslsmith_index_u32(65749u, 11u)]), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1284f, -1695f, 555f) - vec3<f32>(1409f, -2685f, -1252f)), vec3<bool>(true, true, true)))))));
    var var_2 = _wgslsmith_mult_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_div_i32(select(406i >> (global0.x % 32u), _wgslsmith_add_i32(2147483647i, -1i), all(vec3<bool>(true, false, false))), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.xy, var_0.xx), 1i, 51899i ^ u_input.a)), u_input.a));
    let var_3 = vec4<bool>(func_2().x, false, false, !(_wgslsmith_f_op_f32(var_1.x - var_1.x) == var_1.x) & true);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yx);
}

