struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: bool,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(12725u, 4294967295u, 4294967295u, 0u);

var<private> global1: vec2<u32>;

var<private> global2: array<bool, 24>;

var<private> global3: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(17980u, 1u), vec2<u32>(79415u, 4294967295u), vec2<u32>(4294967295u, 41834u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 49046u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(11598u, 480u), vec2<u32>(0u, 4294967295u), vec2<u32>(57735u, 4294967295u), vec2<u32>(7328u, 25799u), vec2<u32>(4294967295u, 59053u), vec2<u32>(2636u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(36105u, 4539u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(9190u, 8994u), vec2<u32>(15164u, 24274u), vec2<u32>(33950u, 50732u), vec2<u32>(1797u, 35947u), vec2<u32>(0u, 7440u), vec2<u32>(77337u, 4294967295u), vec2<u32>(1u, 2867u), vec2<u32>(1u, 39175u), vec2<u32>(0u, 23294u));

var<private> global4: vec4<u32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> bool {
    global0 = _wgslsmith_add_vec4_u32(vec4<u32>(~50513u, ~global4.x, 4294967295u, 26042u), u_input.a);
    var var_0 = arg_1;
    global4 = reverseBits(~countOneBits(vec4<u32>(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(25857u, global4.x, 4803u), global0.wwy), 6786u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 11713u, 74100u, global1.x), vec4<u32>(4294967295u, 1u, 46761u, 12898u)))));
    var var_1 = Struct_1(!vec2<bool>(false, !all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.a.x, 24u)], global2[_wgslsmith_index_u32(83972u, 24u)], global2[_wgslsmith_index_u32(global0.x, 24u)]))), min(global0.wyx, ~firstTrailingBit(global0.wwx ^ vec3<u32>(0u, 49651u, 0u))));
    global4 = firstTrailingBit(u_input.a ^ u_input.a);
    return true;
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<bool>) -> bool {
    let var_0 = select(vec3<bool>(arg_0, !all(select(vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 24u)], arg_2.x), vec3<bool>(arg_2.x, global2[_wgslsmith_index_u32(1u, 24u)], arg_0), vec3<bool>(arg_2.x, arg_0, true))), arg_2.x), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(~4294967295u, 24u)], !arg_2.x), select(vec3<bool>(false, arg_0, false), select(vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 24u)], arg_0, true), vec3<bool>(false, arg_0, false), arg_2.x), !vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 24u)], arg_2.x, arg_2.x)), !(!vec3<bool>(true, global2[_wgslsmith_index_u32(global4.x, 24u)], false))), !all(select(vec3<bool>(arg_2.x, arg_0, global2[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(arg_0, false, true), func_3(-1000f, vec2<f32>(1420f, 829f)))));
    let var_1 = Struct_5(1287f, select(!vec4<bool>(!global2[_wgslsmith_index_u32(26098u, 24u)], false, true, false), !vec4<bool>(arg_2.x, var_0.x, all(vec4<bool>(arg_2.x, false, true, global2[_wgslsmith_index_u32(20524u, 24u)])), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -493f) - _wgslsmith_f_op_f32(-376f + 353f)) <= _wgslsmith_f_op_f32(round(-990f))), vec4<f32>(1f, 1f, 1f, 1f));
    var var_2 = Struct_2(_wgslsmith_div_i32(0i, _wgslsmith_sub_i32(~(arg_1.x & arg_1.x), min(-11754i, arg_1.x) << (global1.x % 32u))), abs(~_wgslsmith_mod_i32(i32(-1i) * -21815i, _wgslsmith_mult_i32(arg_1.x, arg_1.x))), true, global3[_wgslsmith_index_u32(77920u, 25u)], Struct_1(arg_2, vec3<u32>(1u, 1u ^ u_input.a.x, firstLeadingBit(u_input.a.x))));
    var var_3 = abs(vec2<i32>(abs(i32(-1i) * -1i), var_2.b) ^ arg_1.yy);
    var var_4 = Struct_4(_wgslsmith_clamp_u32(var_2.d.x, _wgslsmith_sub_u32(101969u, select(1u, 4294967295u & u_input.a.x, !var_1.b.x)), u_input.a.x), false, ~select(~firstLeadingBit(vec3<u32>(global0.x, 37496u, 0u)), ~vec3<u32>(1u, 6280u, u_input.a.x), !(!var_1.b.wwy)), var_1.b);
    return !all(!vec4<bool>(true, true, !var_1.b.x, var_1.b.x));
}

fn func_1() -> Struct_4 {
    global0 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.a.x, global4.x, 1u), abs(vec4<u32>(1u, 11673u, u_input.a.x, 1u)))) ^ _wgslsmith_mult_vec4_u32(~(~min(u_input.a, u_input.a)), vec4<u32>(_wgslsmith_div_u32(u_input.a.x, ~4294967295u), ~max(0u, global4.x), ~84381u, ~firstTrailingBit(global4.x)));
    global4 = u_input.a;
    let var_0 = vec4<bool>(all(vec3<bool>(!global2[_wgslsmith_index_u32(0u | global0.x, 24u)], global2[_wgslsmith_index_u32(select(~u_input.a.x, _wgslsmith_clamp_u32(4111u, global0.x, 4294967295u), false), 24u)], func_2(any(vec4<bool>(true, global2[_wgslsmith_index_u32(12966u, 24u)], global2[_wgslsmith_index_u32(93903u, 24u)], false)), -vec3<i32>(-31783i, -11935i, -1i), vec2<bool>(global2[_wgslsmith_index_u32(global1.x, 24u)], global2[_wgslsmith_index_u32(global1.x, 24u)])))), false, true, global2[_wgslsmith_index_u32(~(~max(u_input.a.x, firstTrailingBit(u_input.a.x))), 24u)]);
    let var_1 = Struct_1(var_0.zy, global0.ywx);
    global4 = ~countOneBits(~_wgslsmith_sub_vec4_u32(u_input.a, u_input.a)) >> (u_input.a % vec4<u32>(32u));
    return Struct_4(abs(global4.x) & 1u, any(var_0.zww), ~(~reverseBits(global0.zxw)), select(!var_0, var_0, vec4<bool>(true, !var_0.x, any(vec2<bool>(false, false)), false)));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> Struct_3 {
    global0 = vec4<u32>(1u, ~global1.x, 0u ^ arg_2, 39282u) << (vec4<u32>(select(global1.x, _wgslsmith_div_u32(~global4.x, 87205u), true), global4.x, firstLeadingBit(0u) ^ firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(global4.x, arg_1, 1u, 24982u))), 59551u) % vec4<u32>(32u));
    let var_0 = firstLeadingBit(-_wgslsmith_sub_i32(_wgslsmith_mod_i32(25520i, _wgslsmith_div_i32(-3999i, 931i)), abs(-2147483647i)));
    let var_1 = countOneBits(_wgslsmith_div_vec2_i32(select(_wgslsmith_add_vec2_i32(vec2<i32>(var_0, var_0), ~vec2<i32>(var_0, 12174i)), ~_wgslsmith_div_vec2_i32(vec2<i32>(var_0, -1i), vec2<i32>(var_0, var_0)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_0.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(0u, 55479u))), 24u)]), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_0, var_0)), var_0), vec2<i32>(var_0, ~var_0))));
    let var_2 = arg_0;
    global0 = _wgslsmith_add_vec4_u32(~u_input.a, vec4<u32>(firstTrailingBit(1u & select(global1.x, 36510u, true)), func_1().c.x, abs(~(~22191u)), global1.x));
    return Struct_3(Struct_1(select(arg_0.d.yy, select(func_1().d.wy, vec2<bool>(true, true), true), var_2.b), arg_0.c), Struct_1(!var_2.d.yx, select(~(~arg_0.c), min(_wgslsmith_div_vec3_u32(arg_0.c, u_input.a.xyw), global0.xxx), true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(), firstTrailingBit(_wgslsmith_mod_u32(firstTrailingBit(u_input.a.x), global1.x)), 21384u);
    var var_1 = vec2<u32>(func_4(Struct_4(~(global4.x << (1u % 32u)), false, (vec3<u32>(0u, 4294967295u, 0u) ^ global0.wzx) << (_wgslsmith_sub_vec3_u32(global4.xxz, vec3<u32>(global1.x, 0u, global1.x)) % vec3<u32>(32u)), !vec4<bool>(var_0.b.a.x, false, var_0.b.a.x, true)), u_input.a.x, global4.x & (~12893u << (0u % 32u))).b.b.x, ~(~(~25880u)));
    global2 = array<bool, 24>();
    let var_2 = 1800f;
    var var_3 = global2[_wgslsmith_index_u32(~(~u_input.a.x), 24u)];
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(0u);
}

