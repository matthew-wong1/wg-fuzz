struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

var<private> global1: i32;

var<private> global2: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(49535u, 25887u, 45796u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(44746u, 41890u, 23995u), vec3<u32>(1u, 17166u, 0u), vec3<u32>(1u, 8999u, 51423u), vec3<u32>(35087u, 4294967295u, 5719u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(1u, 45632u, 47864u), vec3<u32>(25605u, 4294967295u, 4294967295u), vec3<u32>(64288u, 4294967295u, 43535u));

var<private> global3: Struct_3;

var<private> global4: array<u32, 3> = array<u32, 3>(4294967295u, 1u, 1232u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_3) -> f32 {
    let var_0 = Struct_3(arg_2.b, Struct_2(firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_0.b.yz, global3.a.b.xx)) | (-vec2<i32>(arg_2.a.b.x, -14961i) ^ _wgslsmith_div_vec2_i32(vec2<i32>(arg_2.b.b.x, 1i), vec2<i32>(1i, global3.b.b.x))), firstTrailingBit(~abs(vec3<i32>(arg_0.a.x, global3.a.b.x, 1i))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1154f, global3.a.c.x, -259f, 1195f), vec4<f32>(arg_0.c.x, 459f, arg_0.c.x, -323f))))))));
    var var_1 = 241f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1754f), _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -570f)))), -918f);
    global3 = var_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.c.zzw));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1239f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) - _wgslsmith_f_op_f32(-var_3.x));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(vec2<i32>(u_input.c.x, -64589i), -select(-(~vec3<i32>(27315i, global3.a.a.x, 6249i)), vec3<i32>(u_input.c.x, global3.a.b.x, _wgslsmith_dot_vec2_i32(u_input.c.yx, vec2<i32>(2147483647i, global3.a.b.x))), !select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), global3.b.c);
    let var_1 = !(!(!vec3<bool>(true, true, any(vec3<bool>(true, true, false)))));
    let var_2 = global3.a.b >> (global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~4294967295u, 6u)], 11u)] % vec3<u32>(32u));
    let var_3 = Struct_1(true, false, u_input.c.x, true);
    global2 = array<vec3<u32>, 11>();
    return 2147483647i;
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global0 = array<u32, 6>();
    var var_0 = all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false))) || true;
    global4 = array<u32, 3>();
    global1 = 1i;
    global3 = Struct_3(Struct_2(~u_input.c.zy, (vec3<i32>(u_input.c.x, 2147483647i, -1i) & _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<i32>(global3.b.b.x, u_input.c.x, 0i))) ^ _wgslsmith_mult_vec3_i32(u_input.c & u_input.c, vec3<i32>(u_input.c.x, 2147483647i, global3.b.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.c.x, 1000f, global3.b.c.x, 1762f)))), Struct_2(_wgslsmith_add_vec2_i32(u_input.c.xz, global3.b.b.zy), ~global3.b.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-2686f - -1155f), global3.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -289f)) + vec4<f32>(_wgslsmith_f_op_f32(func_2(global3.b, vec4<u32>(0u, 0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.x, 6u)], 6u)]), Struct_3(Struct_2(vec2<i32>(u_input.c.x, u_input.c.x), vec3<i32>(64202i, -29382i, u_input.c.x), global3.b.c), Struct_2(u_input.c.zx, vec3<i32>(u_input.c.x, u_input.c.x, 0i), global3.b.c)))), 1041f, _wgslsmith_f_op_f32(-global3.a.c.x), _wgslsmith_f_op_f32(-global3.a.c.x)))));
    return Struct_1(((u_input.c.x <= u_input.c.x) && !(1u <= global0[_wgslsmith_index_u32(0u, 6u)])) && !(!(global3.b.c.x != global3.a.c.x)), !(~(~2147483647i) >= (min(2147483647i, global3.b.b.x) << (~global4[_wgslsmith_index_u32(23078u, 3u)] % 32u))), _wgslsmith_sub_i32(1i, func_3()) | _wgslsmith_mod_i32(abs(global3.a.b.x), 1i), !any(vec4<bool>(true, all(vec4<bool>(false, true, false, false)), true, false)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: f32) -> u32 {
    var var_0 = arg_1;
    var var_1 = Struct_1(false, false, ~reverseBits(-_wgslsmith_sub_i32(arg_1.c, u_input.c.x)), true);
    let var_2 = global3.b.c.xwy;
    var var_3 = global3.b;
    let var_4 = func_1(vec4<u32>(arg_0.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(37238u, u_input.b, u_input.a), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(47328u, 3u)], 11u)]), _wgslsmith_mult_vec3_u32(arg_0, vec3<u32>(1u, 70062u, u_input.b))), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(5420u, 10402u, 64472u, 0u), vec4<u32>(u_input.a, 1u, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(58401u, 6u)], 3u)], 1u)), global0[_wgslsmith_index_u32(firstLeadingBit(5577u), 6u)])), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(min(~0u, firstTrailingBit(arg_0.x)), 6u)], ~4294967295u), ~1u));
    return max(u_input.b, min(~select(u_input.b, 0u, true) & _wgslsmith_mod_u32(arg_0.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(14770u, 4294967295u), 6u)]), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(arg_0.x), abs(78260u)), _wgslsmith_mod_vec2_u32(arg_0.yy, vec2<u32>(36380u, 4294967295u)) << (~vec2<u32>(global4[_wgslsmith_index_u32(u_input.b, 3u)], 4294967295u) % vec2<u32>(32u))), 3u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(countOneBits(~(~vec3<u32>(21883u, u_input.a, 51439u))), func_1(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(4294967295u, 6u)], 27162u, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(25725u, 3u)], 6u)], 3u)]), vec4<u32>(global4[_wgslsmith_index_u32(8186u, 3u)], u_input.b, 4294967295u, 43363u)), ~vec4<u32>(30860u, u_input.a, 1u, 48276u)), vec4<u32>(0u, ~1u, 0u, u_input.b))), global3.b.c.x);
    global3 = Struct_3(global3.b, Struct_2(global3.a.a, vec3<i32>(_wgslsmith_add_i32(func_3(), global3.a.b.x), u_input.c.x, (global3.b.b.x << (global0[_wgslsmith_index_u32(0u, 6u)] % 32u)) << (~0u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.a.c.x)) * global3.a.c.x), _wgslsmith_f_op_f32(f32(-1f) * -114f), _wgslsmith_f_op_f32(-global3.b.c.x), _wgslsmith_f_op_f32(func_2(Struct_2(global3.b.a, global3.a.b, vec4<f32>(global3.a.c.x, global3.b.c.x, -710f, global3.a.c.x)), countOneBits(vec4<u32>(47376u, var_0, 4294967295u, u_input.b)), Struct_3(global3.a, Struct_2(global3.b.b.xx, u_input.c, global3.b.c)))))));
    let var_1 = false;
    let var_2 = global3.b;
    global0 = array<u32, 6>();
    global3 = Struct_3(global3.a, global3.b);
    global1 = ~0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.c.x, countOneBits(_wgslsmith_dot_vec2_i32(global3.a.a, vec2<i32>(27694i, 1i)))), ~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~49307u, 6u)], 3u)], ~41169u, 63787u), 11u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(0u), ~global4[_wgslsmith_index_u32(u_input.b, 3u)]), 11u)]));
}

