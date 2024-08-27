struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 31>;

var<private> global2: Struct_2 = Struct_2(vec2<bool>(true, true), Struct_1(vec4<bool>(true, false, true, true), 0u, vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 2533i), 762f, vec4<u32>(0u, 0u, 55123u, 21890u)), Struct_1(vec4<bool>(false, true, false, true), 48636u, vec4<i32>(-1i, -24020i, 2147483647i, 0i), -143f, vec4<u32>(4294967295u, 1u, 0u, 32430u)), Struct_1(vec4<bool>(true, true, false, true), 23240u, vec4<i32>(-33706i, 15247i, i32(-2147483648), i32(-2147483648)), 896f, vec4<u32>(0u, 0u, 4294967295u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, false), 62834u, vec4<i32>(i32(-2147483648), i32(-2147483648), 2147483647i, 6868i), -1097f, vec4<u32>(1u, 80481u, 0u, 12812u)));

var<private> global3: array<vec3<f32>, 18>;

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1132f, global4.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -1000f) + vec2<f32>(-380f, global4.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -410f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.d, global2.b.d)), !global2.e.a.zy)))), vec2<f32>(global4.x, _wgslsmith_f_op_f32(-global4.x)))));
    global2 = global1[_wgslsmith_index_u32(global2.b.b << (countOneBits(reverseBits(4294967295u)) % 32u), 31u)];
    let var_0 = -893f;
    let var_1 = 31896u;
    return select(select(select(!select(global2.a, vec2<bool>(true, true), true), !vec2<bool>(global2.b.a.x, global2.c.a.x), !(!vec2<bool>(global2.b.a.x, global2.d.a.x))), select(vec2<bool>(global2.a.x, global2.a.x), vec2<bool>(global4.x > global4.x, global2.e.a.x), vec2<bool>(!global2.a.x, global2.c.a.x)), true), select(global2.d.a.yz, global2.c.a.yx, !vec2<bool>(var_1 < 25970u, false)), true);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = Struct_2(select(select(vec2<bool>(any(global2.d.a), false), global2.c.a.yz, func_3()), !global2.c.a.yw, countOneBits(global2.e.c.x) >= global2.d.c.x), Struct_1(arg_3.a, _wgslsmith_mod_u32(4294967295u, min(abs(global2.b.e.x), _wgslsmith_clamp_u32(0u, 58609u, global0.x))), vec4<i32>(1i, ~arg_3.c.x, _wgslsmith_dot_vec4_i32(-global2.e.c, vec4<i32>(arg_3.c.x, arg_3.c.x, global2.c.c.x, arg_3.c.x)), arg_3.c.x), global4.x, firstTrailingBit(vec4<u32>(11589u, 52947u, 67752u, arg_1.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, global2.b.e.x, global0.x, arg_1.x), vec4<u32>(arg_1.x, 4294967295u, global2.d.e.x, 17879u)) % vec4<u32>(32u)))), arg_3, arg_3, global2.c);
    var var_1 = Struct_1(!global2.e.a, 1u, global2.b.c, var_0.d.d, vec4<u32>(~_wgslsmith_add_u32(var_0.e.b, 4294967295u), arg_3.b, 4294967295u, 0u) | (select(vec4<u32>(26623u, 1u, 57813u, arg_3.e.x), ~var_0.e.e, global2.c.b >= u_input.a) | select(var_0.c.e, ~var_0.d.e, any(arg_2.zx))));
    let var_2 = global1[_wgslsmith_index_u32(min(arg_1.x, arg_3.e.x), 31u)];
    let var_3 = arg_3.a.zy;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(global2.d.b, 18u)]) + global3[_wgslsmith_index_u32(global0.x, 18u)]);
    return ~var_2.d.e.x;
}

fn func_1() -> Struct_1 {
    let var_0 = 0i;
    global3 = array<vec3<f32>, 18>();
    var var_1 = global1[_wgslsmith_index_u32(func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, ~(-17464i)), vec2<i32>(-1885i, global2.d.c.x)), min(vec2<u32>(53338u, global2.c.b), ~(select(vec2<u32>(4294967295u, 54307u), vec2<u32>(u_input.a, 51515u), false) >> (vec2<u32>(68434u, 14975u) % vec2<u32>(32u)))), vec3<bool>(2369f >= global2.b.d, var_0 <= ~0i, true), global2.c), 31u)];
    let var_2 = _wgslsmith_sub_i32(18643i, _wgslsmith_mod_i32(~0i, -21716i));
    var var_3 = _wgslsmith_f_op_f32(-var_1.c.d);
    return global2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global3 = array<vec3<f32>, 18>();
    var var_1 = -1000f;
    global1 = array<Struct_2, 31>();
    let var_2 = global2.d;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(func_1().d, _wgslsmith_f_op_f32(global2.e.d + -307f))))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(367f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, -408f) + global2.c.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(4294967295u, 18u)] - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1253f, 445f), 1f, 1733f))), 58275u, _wgslsmith_clamp_vec3_i32(vec3<i32>(-12719i, firstTrailingBit(global2.d.c.x), global2.d.c.x), global2.d.c.wwy, firstLeadingBit(func_1().c.zyz)), vec2<u32>(~(var_0.e.x & ~u_input.a), var_2.b), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.d.d, _wgslsmith_f_op_f32(trunc(806f))), vec2<f32>(_wgslsmith_f_op_f32(1000f * -264f), _wgslsmith_div_f32(global2.d.d, _wgslsmith_f_op_f32(sign(1163f)))))));
}

