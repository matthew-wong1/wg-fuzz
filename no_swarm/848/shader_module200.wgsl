struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: array<bool, 19>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(1u, false, vec2<u32>(4294967295u, 12091u), 213f, vec2<u32>(23330u, 4294967295u)), Struct_1(16713u, false, vec2<u32>(0u, 112559u), -127f, vec2<u32>(29873u, 52988u)), Struct_1(25416u, true, vec2<u32>(1u, 1u), -758f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(2443u, true, vec2<u32>(0u, 19034u), -995f, vec2<u32>(0u, 52430u)), Struct_1(20385u, true, vec2<u32>(20071u, 1u), -108f, vec2<u32>(23001u, 1u)), Struct_1(4294967295u, false, vec2<u32>(1u, 27622u), -516f, vec2<u32>(17909u, 0u)), Struct_1(121723u, false, vec2<u32>(0u, 4294967295u), -270f, vec2<u32>(47804u, 0u)), Struct_1(78733u, true, vec2<u32>(1u, 37405u), 514f, vec2<u32>(0u, 4294967295u)), Struct_1(19493u, true, vec2<u32>(11428u, 43538u), 1000f, vec2<u32>(0u, 69056u)), Struct_1(44221u, false, vec2<u32>(1u, 1u), 414f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(27412u, true, vec2<u32>(65268u, 75967u), -433f, vec2<u32>(1u, 30283u)), Struct_1(8019u, true, vec2<u32>(29453u, 1u), 265f, vec2<u32>(4294967295u, 18185u)), Struct_1(4294967295u, false, vec2<u32>(4294967295u, 33345u), 2047f, vec2<u32>(1u, 0u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    global0 = array<bool, 19>();
    var var_0 = Struct_3(vec3<u32>(~4294967295u, 0u, ~min(~arg_0.a, ~arg_0.a)), Struct_2(all(global1.b), select(select(vec3<bool>(global1.b.x, global0[_wgslsmith_index_u32(global1.d.a, 19u)], false), vec3<bool>(false, arg_0.b, false), !global1.b), !(!global1.c.yyz), select(true, false, true)), global1.c, arg_0, global1.e), abs(vec4<i32>(-3035i, _wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, u_input.a), 1i, _wgslsmith_div_i32(-1662i, u_input.a)), _wgslsmith_div_i32(u_input.a, -1i), u_input.a)), -91504i);
    let var_1 = !var_0.b.b.xz;
    global0 = array<bool, 19>();
    let var_2 = -(vec3<i32>(-1i | _wgslsmith_mult_i32(u_input.a, u_input.a), -48927i, 14869i) >> (var_0.a % vec3<u32>(32u)));
    return vec2<u32>(~48542u, ~((var_0.a.x ^ select(arg_0.a, 1u, false)) << ((~1u ^ global1.d.e.x) % 32u)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    var var_0 = func_3(arg_1.d).x;
    var var_1 = !(!arg_0.b.c.yz);
    var var_2 = Struct_2(false, !(!(!select(vec3<bool>(false, true, arg_0.b.a), vec3<bool>(var_1.x, arg_0.b.e.b, true), arg_0.b.c.x))), !(!vec4<bool>(global1.d.b, true, any(arg_1.c.wx), global0[_wgslsmith_index_u32(0u, 19u)])), Struct_1(9112u, global0[_wgslsmith_index_u32(~global1.d.e.x, 19u)], func_3(arg_0.b.d), 1000f, vec2<u32>(4294967295u, ~arg_0.a.x)), arg_1.d);
    let var_3 = arg_0;
    let var_4 = var_3.a;
    return true;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(func_4(Struct_3(vec3<u32>(~61585u, ~global1.e.c.x, 13748u), Struct_2(global1.a, vec3<bool>(true, true, global1.d.b), global1.c, global2[_wgslsmith_index_u32(global1.e.e.x >> (global1.e.e.x % 32u), 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), -abs(vec4<i32>(-2147483647i, u_input.a, -51393i, u_input.a)), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(2147483647i, u_input.a, 1i))), Struct_2(global0[_wgslsmith_index_u32(~15957u, 19u)] & false, global1.b, !(!global1.c), global2[_wgslsmith_index_u32(reverseBits(25706u) | global1.e.c.x, 13u)], Struct_1(~1u, true, global1.d.c, _wgslsmith_f_op_f32(-823f * global1.d.d), vec2<u32>(global1.d.c.x, global1.d.c.x))), Struct_2(!(693f != global1.d.d), vec3<bool>(true, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 21293u), 19u)], global0[_wgslsmith_index_u32(0u, 19u)] & false), !(!vec4<bool>(global1.a, true, global0[_wgslsmith_index_u32(34108u, 19u)], false)), global1.d, Struct_1(abs(global1.e.c.x), 1u < global1.d.a, func_3(global1.d), -974f, vec2<u32>(global1.e.a, 4294967295u)))), vec3<bool>(global1.e.b, !any(global1.c.wyw), true), select(vec4<bool>(global1.c.x, true, all(global1.c), !(-1481f >= global1.e.d)), vec4<bool>(!all(global1.c.yyw), all(!global1.c), global1.d.b, true), any(!select(global1.c.zxw, global1.b, global1.b.x))), Struct_1(_wgslsmith_div_u32(11490u, ~7344u), all(!(!vec2<bool>(true, global1.d.b))), vec2<u32>(_wgslsmith_div_u32(global1.e.e.x << (global1.e.a % 32u), ~global1.d.c.x), ~global1.d.e.x), 2379f, ~min(vec2<u32>(global1.d.c.x, global1.d.a) & vec2<u32>(4294967295u, 109841u), vec2<u32>(1u, global1.e.a))), Struct_1(firstLeadingBit(firstLeadingBit(global1.d.c.x)), !global0[_wgslsmith_index_u32(global1.d.a, 19u)], _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 0u), global1.e.c) << (global1.e.c % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1108f), vec2<u32>(1u, global1.d.c.x)));
    global0 = array<bool, 19>();
    let var_1 = ~(u_input.a | -2147483647i);
    var var_2 = ~_wgslsmith_mult_u32(min((global1.e.e.x ^ 8170u) & global1.d.a, ~4294967295u & min(global1.e.c.x, 0u)), global1.e.a);
    return vec3<bool>(false, -abs(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)) == var_1, any(global1.b));
}

fn func_1() -> Struct_3 {
    let var_0 = global1.d.d;
    global1 = Struct_2(!all(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(global1.e.e.x, 19u)], false)), select(global1.b, func_2(), func_2()), vec4<bool>(global0[_wgslsmith_index_u32(global1.e.a, 19u)], false, any(!global1.b), any(!global1.b.zz)), Struct_1(min(~global1.d.e.x, 0u) | global1.e.a, !global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(global1.e.c, vec2<u32>(global1.d.e.x, global1.d.c.x))), 19u)], _wgslsmith_mult_vec2_u32(~vec2<u32>(global1.e.e.x, 0u), ~vec2<u32>(1u, 55669u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.d.d, global1.e.d))), select(select(~vec2<u32>(1u, 4294967295u), global1.e.e, false), global1.d.e, func_2().zx)), Struct_1(global1.e.e.x, !any(select(global1.c.xx, vec2<bool>(global1.b.x, global0[_wgslsmith_index_u32(10644u, 19u)]), vec2<bool>(false, false))), vec2<u32>(global1.d.c.x, reverseBits(global1.d.e.x)), global1.e.d, vec2<u32>(global1.e.c.x, abs(_wgslsmith_sub_u32(global1.d.c.x, global1.d.a)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.d, -459f, -611f) - vec3<f32>(global1.d.d, global1.d.d, global1.d.d)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.e.d, 1609f, 712f) + vec3<f32>(657f, -641f, global1.e.d)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.e.d, global1.d.d, global1.d.d), vec3<f32>(global1.d.d, global1.d.d, 1155f)))))))));
    var var_2 = global1.a;
    let var_3 = Struct_3(firstTrailingBit(~firstTrailingBit(~vec3<u32>(1u, global1.e.e.x, 7295u))), Struct_2((countOneBits(1i) >= u_input.a) && (firstLeadingBit(-48434i) > u_input.a), select(select(select(vec3<bool>(global1.d.b, global1.a, false), vec3<bool>(false, global1.c.x, true), true), func_2(), vec3<bool>(true, global0[_wgslsmith_index_u32(global1.d.e.x, 19u)], true)), !(!global1.c.yxz), !select(global1.b, vec3<bool>(false, global1.b.x, true), global1.c.zyz)), !vec4<bool>(func_2().x, all(vec4<bool>(true, true, false, false)), any(global1.c), select(global1.b.x, global1.d.b, global0[_wgslsmith_index_u32(39477u, 19u)])), global1.e, global1.d), select(reverseBits(~vec4<i32>(u_input.a, 2446i, -11370i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(20717i, -1i, u_input.a, -35823i), vec4<i32>(25147i, u_input.a, u_input.a, u_input.a)) ^ countOneBits(vec4<i32>(u_input.a, -6272i, 60034i, 34978i)), false) | -(abs(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)) & max(vec4<i32>(-25830i, u_input.a, -9817i, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, u_input.a))), 2147483647i);
    return Struct_3(select(~(~(~vec3<u32>(38391u, 0u, var_3.b.d.e.x))), reverseBits(var_3.a), all(!global1.c.xwz)), var_3.b, vec4<i32>(_wgslsmith_dot_vec3_i32(var_3.c.ywz, vec3<i32>(u_input.a, u_input.a, -9346i)) & 1i, 2653i, 38844i, 0i), 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(~(~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.b.e.c.x, 2875u), var_0.a, vec3<u32>(var_0.b.e.a, global1.d.e.x, global1.d.c.x)), _wgslsmith_add_vec3_u32(vec3<u32>(global1.d.a, 23367u, 48231u), vec3<u32>(var_0.b.d.e.x, global1.d.a, 4294967295u)))), Struct_2(true, !select(!var_0.b.c.xxx, func_2(), !vec3<bool>(true, true, var_0.b.b.x)), vec4<bool>(!func_1().b.a, true, any(select(vec4<bool>(var_0.b.e.b, global1.e.b, false, global0[_wgslsmith_index_u32(global1.e.c.x, 19u)]), vec4<bool>(global1.e.b, var_0.b.b.x, true, false), global1.c.x)), !all(var_0.b.c)), Struct_1(~(~var_0.b.e.c.x), all(func_2().xz), vec2<u32>(global1.d.c.x, 1u) & vec2<u32>(5035u, 0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d.d) * 788f), global1.d.c), Struct_1(9394u << (min(global1.e.e.x, 1u) % 32u), false, vec2<u32>(var_0.a.x | var_0.b.d.c.x, 1u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.b.d.d * var_0.b.d.d))), vec2<u32>(var_0.b.e.c.x, 1u))), -_wgslsmith_div_vec4_i32(func_1().c, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, u_input.a, u_input.a, -1200i), func_1().c)), -78236i);
    let var_1 = global1.d;
    var var_2 = any(global1.b.xy);
    var var_3 = Struct_2(global1.a, select(var_0.b.c.xwx, !(!var_0.b.c.wxw), !func_1().b.b), func_1().b.c, Struct_1(~5514u, global1.d.b, select(_wgslsmith_sub_vec2_u32(global1.e.e, vec2<u32>(0u, global1.e.c.x)), vec2<u32>(_wgslsmith_add_u32(4294967295u, var_0.a.x), ~var_1.e.x), !var_0.b.b.zz), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1651f, -625f)))), _wgslsmith_sub_vec2_u32(var_0.a.yx, var_0.a.zy) ^ vec2<u32>(var_1.c.x >> (4294967295u % 32u), ~1u)), global2[_wgslsmith_index_u32(~global1.d.c.x, 13u)]);
    let var_4 = vec3<f32>(var_0.b.e.d, -356f, _wgslsmith_f_op_f32(-var_1.d));
    global1 = Struct_2(true, select(global1.b, !select(!vec3<bool>(false, var_3.a, true), vec3<bool>(global0[_wgslsmith_index_u32(15966u, 19u)], var_3.e.b, var_0.b.c.x), global1.b), any(vec4<bool>(true, true || global1.b.x, all(vec3<bool>(global0[_wgslsmith_index_u32(var_3.e.c.x, 19u)], false, global1.b.x)), true))), select(!vec4<bool>(true, var_0.b.e.b, func_2().x, !global0[_wgslsmith_index_u32(56856u, 19u)]), select(vec4<bool>(var_0.b.e.b, true, false, var_0.b.d.b), vec4<bool>(true, false, global1.e.b, -64154i > var_0.c.x), !global1.c), func_1().b.d.b), Struct_1(0u, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.c.x, 75288i, var_0.d), ~vec4<i32>(1i, 2147483647i, var_0.c.x, u_input.a)) >= -1i, ~vec2<u32>(func_3(var_3.e).x, reverseBits(23627u)), -143f, vec2<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(637u, var_1.e.x, global1.d.c.x, global1.d.e.x), vec4<u32>(var_1.c.x, 49977u, 0u, 20078u)), vec4<u32>(78691u, 0u, 90402u, 8702u)), var_0.b.d.c.x)), var_3.d);
    var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d, -1351f), vec2<f32>(852f, 671f)) * _wgslsmith_f_op_vec2_f32(var_4.xy * var_4.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.yz - var_4.zy))))));
}

