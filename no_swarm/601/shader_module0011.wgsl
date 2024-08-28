struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 27>;

var<private> global1: array<u32, 9> = array<u32, 9>(0u, 4294967295u, 4294967295u, 25805u, 0u, 4294967295u, 11368u, 98274u, 90854u);

var<private> global2: Struct_2 = Struct_2(vec4<u32>(4294967295u, 41790u, 90375u, 1u), vec4<bool>(true, true, false, false), Struct_1(vec3<f32>(299f, -1566f, -1080f), vec3<f32>(-1000f, -1000f, -1880f)));

var<private> global3: array<Struct_1, 25>;

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.b.x))), _wgslsmith_f_op_f32(-global2.c.b.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.b.x, arg_0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -300f)))));
    var var_1 = ~global2.a;
    global2 = Struct_2(~(~(max(global2.a, global2.a) & global2.a)), !select(select(!vec4<bool>(global2.b.x, true, true, true), vec4<bool>(false, false, true, global2.b.x), global2.b.x), select(vec4<bool>(global2.b.x, arg_1, false, global2.b.x), global2.b, !arg_1), global2.b), global2.c);
    var_1 = global2.a;
    let var_2 = true;
    return !vec4<bool>(any(global2.b.xxz), arg_0.x > arg_0.x, all(!select(vec3<bool>(arg_1, global2.b.x, false), vec3<bool>(true, true, var_2), global2.b.zyx)), true);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_1(arg_0.c.a, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c.b.x))))), global2.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.c.b.x, arg_0.c.a.x) - _wgslsmith_f_op_f32(ceil(303f))))));
    var var_1 = _wgslsmith_mod_vec4_i32(~firstTrailingBit(max(vec4<i32>(0i, 30041i, 0i, 2147483647i), ~vec4<i32>(u_input.a.x, 49349i, arg_2.x, 0i))), vec4<i32>(-1i, i32(-1i) * -2147483647i, arg_2.x, u_input.a.x & 16260i) | _wgslsmith_sub_vec4_i32(-(~vec4<i32>(u_input.a.x, -3091i, u_input.a.x, -1i)), reverseBits(-vec4<i32>(arg_2.x, -30982i, u_input.a.x, -1i))));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_sub_i32(0i, -2147483647i);
    var_2 = Struct_2(vec4<u32>(~var_2.a.x, u_input.b, ~(~(~0u)), 20525u), !select(vec4<bool>(!arg_0.b.x, any(var_2.b.xw), any(arg_0.b.xzx), all(vec3<bool>(arg_0.b.x, var_2.b.x, var_2.b.x))), func_3(_wgslsmith_f_op_vec2_f32(global2.c.b.zx * vec2<f32>(-1152f, 732f)), arg_0.b.x, -vec4<i32>(-2147483647i, arg_2.x, 49581i, 0i), i32(-1i) * -32196i), var_2.b), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.a.www, vec3<u32>(var_2.a.x, arg_0.a.x, _wgslsmith_add_u32(u_input.b, 1u) & (57373u & arg_1.x))), 32u)]);
    return Struct_2(~vec4<u32>(~_wgslsmith_sub_u32(1u, arg_0.a.x), 4294967295u, 1u, var_2.a.x), func_3(var_2.c.a.yz, !(_wgslsmith_f_op_f32(global2.c.a.x * 685f) != _wgslsmith_f_op_f32(arg_0.c.a.x + global2.c.b.x)), vec4<i32>(-35301i, -112879i, -max(-2147483647i, 1220i), arg_2.x), 0i), var_2.c);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_2(arg_2, reverseBits(vec2<u32>(_wgslsmith_mult_u32(~4294967295u, arg_1.x), 6428u)), -(~(~(~vec3<i32>(u_input.a.x, -25200i, u_input.a.x)))));
    var var_1 = Struct_2(vec4<u32>(u_input.b, firstTrailingBit(var_0.a.x), _wgslsmith_dot_vec4_u32(arg_2.a, vec4<u32>(arg_0, 10355u, 27397u ^ global1[_wgslsmith_index_u32(u_input.b, 9u)], var_0.a.x)), _wgslsmith_clamp_u32(~arg_1.x, _wgslsmith_mod_u32(reverseBits(10967u), countOneBits(global2.a.x)), ~260u ^ arg_0)), vec4<bool>(true, !func_2(Struct_2(vec4<u32>(u_input.b, 31899u, arg_1.x, 1u), vec4<bool>(global2.b.x, false, var_0.b.x, true), arg_2.c), vec2<u32>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), u_input.a).b.x, var_0.b.x, true), global2.c);
    var_1 = arg_2;
    global1 = array<u32, 9>();
    let var_2 = vec3<i32>(0i, 3863i, 47923i);
    return var_1.c;
}

fn func_4(arg_0: Struct_1) -> i32 {
    let var_0 = ((global2.b.x || func_2(Struct_2(vec4<u32>(4294967295u, 4294967295u, 4294967295u, global2.a.x), global0[_wgslsmith_index_u32(79497u, 27u)], Struct_1(arg_0.a, global2.c.a)), abs(global2.a.zy), firstTrailingBit(u_input.a)).b.x) | func_3(vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.a.x, -153f)), _wgslsmith_f_op_f32(min(arg_0.b.x, -1000f))), any(vec3<bool>(global2.b.x, false, false)) & global2.b.x, vec4<i32>(-1i) * -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -51259i), 29612i).x) | any(!(!(!vec2<bool>(global2.b.x, global2.b.x))));
    global2 = func_2(Struct_2(~(vec4<u32>(4294967295u, u_input.b, 0u, 36471u) << (~global2.a % vec4<u32>(32u))), global2.b, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(202f, 1095f, 102f) * vec3<f32>(-347f, 1000f, -1263f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.x, global2.c.b.x, global2.c.b.x), global2.c.a, vec3<bool>(var_0, global2.b.x, false))) - _wgslsmith_f_op_vec3_f32(ceil(global2.c.b))))), ~vec2<u32>(countOneBits(_wgslsmith_add_u32(0u, global2.a.x)), select(~global2.a.x, ~global1[_wgslsmith_index_u32(7085u, 9u)], false)), _wgslsmith_mod_vec3_i32(u_input.a, _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, 27820i, ~22138i), -(~u_input.a))));
    let var_1 = ~global2.a;
    global3 = array<Struct_1, 25>();
    global3 = array<Struct_1, 25>();
    return 32794i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(firstLeadingBit(13695u), global2.a.xz, Struct_2(~select(vec4<u32>(global1[_wgslsmith_index_u32(0u, 9u)], 1u, 17245u, 7229u), global2.a, global0[_wgslsmith_index_u32(14605u, 27u)]), select(global0[_wgslsmith_index_u32(~44954u, 27u)], global2.b, global2.b.x && true), Struct_1(global2.c.a, global2.c.b))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_1(19536u, vec2<u32>(u_input.b, 1u), Struct_2(global2.a, vec4<bool>(false, true, false, global2.b.x), Struct_1(vec3<f32>(134f, global2.c.b.x, -1232f), vec3<f32>(global2.c.b.x, -365f, -1356f)))).b.x))) - -677f);
    let var_2 = countOneBits(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(-31859i, 37838i, var_0, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(5527i, 0i, -2147483647i, var_0) ^ vec4<i32>(u_input.a.x, 1i, 2147483647i, 15937i), countOneBits(vec4<i32>(var_0, -1i, 13253i, var_0))), -vec4<i32>(var_0, 44747i, -1i, var_0) << (min(vec4<u32>(global2.a.x, 58652u, 5249u, 0u), vec4<u32>(31388u, global1[_wgslsmith_index_u32(0u, 9u)], 4294967295u, global2.a.x)) % vec4<u32>(32u))));
    var var_3 = Struct_2(vec4<u32>(_wgslsmith_add_u32(abs(4294967295u), ~(~0u)), u_input.b, global1[_wgslsmith_index_u32(max(~func_2(Struct_2(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 9u)], 9u)], 4853u, global1[_wgslsmith_index_u32(4294967295u, 9u)], global2.a.x), global0[_wgslsmith_index_u32(4294967295u, 27u)], global4[_wgslsmith_index_u32(8149u, 32u)]), vec2<u32>(73985u, 1u), u_input.a).a.x, global1[_wgslsmith_index_u32(0u, 9u)]), 9u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(35525u, 9u)], max(4821u, global2.a.x))), !vec4<bool>(global2.b.x, any(!vec2<bool>(global2.b.x, false)), u_input.b < _wgslsmith_mod_u32(global2.a.x, global1[_wgslsmith_index_u32(u_input.b, 9u)]), true), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(global2.c.b.x)), -2176f, 247f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c.a) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.c.b.x, global2.c.b.x, global2.c.b.x), global2.c.b, true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.a.x)), _wgslsmith_f_op_f32(global2.c.a.x - global2.c.b.x), func_2(Struct_2(vec4<u32>(27289u, 0u, u_input.b, global2.a.x), vec4<bool>(false, global2.b.x, false, false), Struct_1(global2.c.a, global2.c.a)), global2.a.xw, vec3<i32>(u_input.a.x, -46458i, 2147483647i) ^ vec3<i32>(var_2.x, 2147483647i, var_0)).c.b.x)));
    let var_4 = func_2(func_2(func_2(func_2(Struct_2(var_3.a, vec4<bool>(true, global2.b.x, var_3.b.x, var_3.b.x), Struct_1(global2.c.b, global2.c.a)), var_3.a.xz ^ global2.a.zy, select(vec3<i32>(var_2.x, u_input.a.x, var_0), var_2.wzy, var_3.b.x)), func_2(Struct_2(vec4<u32>(2712u, var_3.a.x, 74186u, var_3.a.x), vec4<bool>(global2.b.x, true, true, false), global2.c), ~var_3.a.yz, vec3<i32>(u_input.a.x, var_0, 1i) << (vec3<u32>(global1[_wgslsmith_index_u32(3279u, 9u)], global1[_wgslsmith_index_u32(global2.a.x, 9u)], global2.a.x) % vec3<u32>(32u))).a.xy, (vec3<i32>(6919i, -2147483647i, var_0) | vec3<i32>(var_0, 0i, 1i)) ^ _wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(-43004i, 0i, -2147483647i), vec3<i32>(23713i, -1i, u_input.a.x))), vec2<u32>(~u_input.b << (abs(0u) % 32u), 0u), _wgslsmith_mult_vec3_i32(var_2.wwx, _wgslsmith_sub_vec3_i32(vec3<i32>(-26272i, var_2.x, -15908i) >> (vec3<u32>(4294967295u, 72942u, u_input.b) % vec3<u32>(32u)), firstLeadingBit(vec3<i32>(-1i, var_2.x, 0i))))), global2.a.yz, -(~_wgslsmith_add_vec3_i32(abs(var_2.zyw), ~vec3<i32>(var_2.x, u_input.a.x, -2147483647i)))).c;
    let var_5 = global2.a.yy;
    let var_6 = Struct_2(min(_wgslsmith_add_vec4_u32(abs(var_3.a), select(_wgslsmith_add_vec4_u32(global2.a, global2.a), global2.a, global0[_wgslsmith_index_u32(abs(50838u), 27u)])), vec4<u32>(~_wgslsmith_sub_u32(u_input.b, global2.a.x), (22282u ^ global2.a.x) >> (_wgslsmith_add_u32(0u, 1u) % 32u), 1u, select(~9763u, var_3.a.x, true && var_3.b.x))), !(!func_3(_wgslsmith_f_op_vec2_f32(exp2(var_4.a.xz)), func_3(var_3.c.b.xy, false, vec4<i32>(u_input.a.x, 20431i, var_2.x, 0i), 6078i).x, vec4<i32>(var_2.x, var_2.x, u_input.a.x, var_2.x), -u_input.a.x)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.a.x, -1000f, global2.c.b.x))), vec3<f32>(_wgslsmith_f_op_f32(226f + global2.c.b.x), 280f, _wgslsmith_f_op_f32(-global2.c.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~16221i);
}

