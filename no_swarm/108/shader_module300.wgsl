struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, false)));

var<private> global1: u32;

var<private> global2: array<u32, 31>;

var<private> global3: array<vec4<i32>, 3>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(~countOneBits(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c, global2[_wgslsmith_index_u32(34512u, 31u)]), 31u)], 63921u), 31u)]), 31u)], 14u)];
    global0 = array<Struct_1, 14>();
    global3 = array<vec4<i32>, 3>();
    let var_1 = select(vec2<bool>(var_0.a.x && true, var_0.a.x), !var_0.a.xz, select(!select(vec2<bool>(var_0.a.x, true), var_0.a.yy, true), select(var_0.a.zx, vec2<bool>(var_0.a.x, !var_0.a.x), var_0.a.xy), all(var_0.a.yy)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(global2[_wgslsmith_index_u32(1u, 31u)], 34082u, global2[_wgslsmith_index_u32(13045u, 31u)])), ~(~vec3<u32>(u_input.b, 1u, 82499u))) & global2[_wgslsmith_index_u32(1u, 31u)], global2[_wgslsmith_index_u32(firstLeadingBit(global2[_wgslsmith_index_u32(~(~_wgslsmith_mult_u32(33076u, 9502u)), 31u)]), 31u)]), 14u)];
    return global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(~(~4294967295u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(4294967295u, u_input.c), _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(35228u, 31u)], 13601u, u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22696u, 31u)], 31u)]), vec4<u32>(u_input.c, 111310u, u_input.b, u_input.b))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 31u)], 1u, u_input.b, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 30488u), vec4<u32>(61402u, u_input.c, u_input.c, 52232u)))), abs(72168u & u_input.b)), vec3<u32>(4294967295u, firstTrailingBit(u_input.c & ~0u), global2[_wgslsmith_index_u32(u_input.c, 31u)])), 31u)], 31u)];
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(40768u, 14u)];
    global2 = array<u32, 31>();
    global1 = _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(~4294967295u | (~u_input.c ^ ~1u), 31u)], ~u_input.b << (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(func_3(), 31u)], 31u)] % 32u), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 0u, 17680u), 31u)], ~u_input.b), _wgslsmith_mod_u32(27761u, u_input.c)), 31u)]), _wgslsmith_clamp_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(43443u, global2[_wgslsmith_index_u32(4294967295u, 31u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 31u)], 31u)]), vec3<u32>(37576u, 4294967295u, global2[_wgslsmith_index_u32(28863u, 31u)]))) & vec3<u32>(min(4294967295u, 0u), 37928u, global2[_wgslsmith_index_u32(4294967295u, 31u)]), abs(reverseBits(~vec3<u32>(67420u, 0u, 4294967295u))), ~(vec3<u32>(65778u, 1u, global2[_wgslsmith_index_u32(4294967295u, 31u)]) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(3237u, 31u)], 38521u), vec3<u32>(u_input.b, 55057u, u_input.b)) % vec3<u32>(32u)))));
    global3 = array<vec4<i32>, 3>();
    var var_1 = global0[_wgslsmith_index_u32(~(~0u) << (u_input.c % 32u), 14u)];
    return _wgslsmith_clamp_u32(max(global2[_wgslsmith_index_u32(u_input.c, 31u)], u_input.c) >> (~(~23546u) % 32u), min(global2[_wgslsmith_index_u32(u_input.b, 31u)], ~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(65871u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 31u)], 31u)]), 31u)], ~u_input.c)), ~reverseBits(~18302u));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = ~reverseBits(_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 33564u), vec3<u32>(15491u, 1u, 85673u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(52755u, 31u)], 0u, 71067u), vec3<u32>(4294967295u, 0u, u_input.c))));
    return Struct_1(vec3<bool>(any(vec2<bool>(any(vec2<bool>(true, false)), true)), arg_2.x, (~u_input.a > (arg_1.x & 0i)) | !all(arg_2.wy)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(true || (all(vec4<bool>(false, false, false, false)) & true), true, false));
    global0 = array<Struct_1, 14>();
    var var_1 = var_0;
    var var_2 = Struct_1(var_0.a);
    var var_3 = func_4(global0[_wgslsmith_index_u32(~abs(func_2(false || var_0.a.x, countOneBits(vec2<i32>(0i, u_input.a)), -1195f)), 14u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(34244u, ~(~global2[_wgslsmith_index_u32(u_input.c, 31u)] ^ 1u)), 3u)], !select(!vec4<bool>(var_1.a.x, var_0.a.x, true, var_1.a.x), select(vec4<bool>(var_1.a.x, true, false, var_1.a.x), !vec4<bool>(true, var_0.a.x, false, false), true), select(!vec4<bool>(var_2.a.x, false, false, var_1.a.x), vec4<bool>(var_0.a.x, false, true, true), vec4<bool>(var_0.a.x, var_0.a.x, var_1.a.x, var_2.a.x))));
    return global0[_wgslsmith_index_u32(48838u, 14u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = reverseBits(4294967295u);
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-807f, _wgslsmith_f_op_f32(-609f * 1885f), _wgslsmith_f_op_f32(f32(-1f) * -2436f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-919f, -695f, 2423f) + vec3<f32>(1f, 1f, 1f)), vec3<f32>(-395f, -2639f, _wgslsmith_f_op_f32(abs(1341f))), select(var_0.a.x & var_0.a.x, false, false))))));
    global0 = array<Struct_1, 14>();
    global2 = array<u32, 31>();
    global0 = array<Struct_1, 14>();
    var_1 = vec3<f32>(193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.x, -222f)) * var_1.x) * var_1.x), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -555f), -1155f, -449f, 492f) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, 692f, var_1.x) - vec4<f32>(-813f, 1403f, 625f, var_1.x))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(-var_1.x)))));
}

