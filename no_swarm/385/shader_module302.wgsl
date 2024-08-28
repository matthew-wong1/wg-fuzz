struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 16261u, 66987u);

var<private> global1: array<vec2<i32>, 10> = array<vec2<i32>, 10>(vec2<i32>(28388i, -17573i), vec2<i32>(-85461i, 22974i), vec2<i32>(0i, -23576i), vec2<i32>(0i, 0i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-11859i, i32(-2147483648)), vec2<i32>(0i, -12685i), vec2<i32>(i32(-2147483648), -6721i), vec2<i32>(4748i, -9717i), vec2<i32>(i32(-2147483648), -21118i));

var<private> global2: vec3<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec3<u32>) -> vec2<bool> {
    let var_0 = Struct_3(Struct_2(~4294967295u), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), true), !vec2<bool>(global2.x < 1134f, all(vec2<bool>(false, true))), !(any(vec3<bool>(true, true, false)) & false)), vec2<i32>(countOneBits(reverseBits(firstTrailingBit(39932i))), 7924i));
    var var_1 = 424f;
    var_1 = global2.x;
    var_1 = 367f;
    var_1 = -258f;
    return var_0.b;
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    let var_0 = Struct_3(Struct_2(0u), func_2(abs(~arg_3.yyz)), select(vec2<i32>(arg_2.a.x, _wgslsmith_add_i32(max(1i, -1i), arg_2.a.x & -14806i)), -vec2<i32>(1i, arg_2.a.x) >> (~global0.yz % vec2<u32>(32u)), func_2(arg_3.zxz)));
    global1 = array<vec2<i32>, 10>();
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1000f, 397f)), _wgslsmith_f_op_f32(global2.x * -399f))), -762f, global2.x) - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + -570f)), -790f, _wgslsmith_f_op_f32(step(-302f, _wgslsmith_f_op_f32(-1000f + global2.x))))));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(520f, global2.x, -904f))));
    var var_1 = Struct_3(Struct_2(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(select(u_input.b.zzx, u_input.c, false), vec3<u32>(1u, 4294967295u, global0.x)), reverseBits(44477u))), select(arg_1, vec2<bool>(arg_1.x, select(true, false && arg_1.x, true)), true), abs(abs(-vec2<i32>(-1i, -4268i) & firstTrailingBit(global1[_wgslsmith_index_u32(34960u, 10u)]))));
    return 1f;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: u32) -> Struct_4 {
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, arg_1, _wgslsmith_f_op_f32(-arg_2.x))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_1)), global2.x, arg_2.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-422f, _wgslsmith_f_op_f32(-844f - 2096f)), _wgslsmith_f_op_f32(func_3(u_input.c.x, func_2(u_input.b.yyw), Struct_1(vec2<i32>(2147483647i, -2243i), u_input.b.yy), vec4<u32>(global0.x, arg_0.a, arg_0.a, 4294967295u))), _wgslsmith_f_op_f32(func_3(_wgslsmith_mult_u32(arg_3, arg_0.a), vec2<bool>(true, true), Struct_1(vec2<i32>(-32753i, 19398i), vec2<u32>(arg_3, 3859u)), ~vec4<u32>(0u, 18314u, 10437u, 0u)))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1649f, global2.x))), global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + 1000f), arg_2.x))), true));
    let var_0 = !func_2(vec3<u32>(4294967295u, ~firstLeadingBit(32956u), arg_0.a)).x;
    let var_1 = 10946i;
    let var_2 = Struct_1(~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b.x, arg_0.a, arg_3), u_input.b.zww), firstLeadingBit(u_input.c)), 10u)] | -firstTrailingBit(firstLeadingBit(global1[_wgslsmith_index_u32(46605u, 10u)])), _wgslsmith_sub_vec2_u32(~(~u_input.b.wx) >> (global0.zx % vec2<u32>(32u)), vec2<u32>(~max(1u, 8633u), 0u)));
    let var_3 = false;
    return Struct_4(func_2(vec3<u32>(abs(87960u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, 4294967295u), vec2<u32>(arg_0.a, 0u)), arg_0.a)));
}

fn func_4(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_2(1u);
    let var_1 = Struct_2(u_input.a);
    global1 = array<vec2<i32>, 10>();
    return var_1;
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3) -> vec3<bool> {
    global1 = array<vec2<i32>, 10>();
    global0 = ~u_input.c;
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(max(1i, arg_0.c.x), -2147483647i, min(1i, arg_2.c.x)), (vec3<i32>(-1i) * -vec3<i32>(arg_2.c.x, arg_2.c.x, 22124i)) << (_wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.c), ~vec3<u32>(28431u, arg_2.a.a, u_input.b.x)) % vec3<u32>(32u))), arg_0.c.x, 1i);
    var var_1 = select(u_input.b, vec4<u32>(~(~arg_2.a.a), ~(~global0.x), max(u_input.b.x, 4294967295u), arg_2.a.a), select(vec4<bool>(arg_2.b.x, _wgslsmith_div_u32(4294967295u, arg_0.a.a) < 4294967295u, arg_2.b.x, arg_0.b.x), vec4<bool>(!(global2.x < global2.x), false, !arg_1, ~8141u == abs(arg_2.a.a)), vec4<bool>(false, func_2(~u_input.b.xxy).x, true, true)));
    let var_2 = global2.xy;
    return !select(vec3<bool>(true, true, -1304f > _wgslsmith_f_op_f32(-global2.x)), vec3<bool>(func_2(u_input.c).x, true, arg_2.b.x), true || all(vec3<bool>(true, arg_2.b.x, true)));
}

fn func_6(arg_0: vec3<bool>) -> StorageBuffer {
    let var_0 = func_4(u_input.b.x, func_1(Struct_2(~1u), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(561f, 269f, 245f, -576f))), ~4294967295u), Struct_1(global1[_wgslsmith_index_u32(10721u, 10u)], select(~vec2<u32>(36844u, global0.x), u_input.b.xz, func_2(firstLeadingBit(u_input.c)))), firstTrailingBit(abs(46542u)));
    let var_1 = countOneBits(~_wgslsmith_div_i32(27561i, 1i)) >> (_wgslsmith_mult_u32(var_0.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, var_0.a, u_input.b.x, global0.x), vec4<u32>(4294967295u, 4294967295u, u_input.a, u_input.a)), reverseBits(4294967295u))) % 32u);
    var var_2 = global2.x;
    global1 = array<vec2<i32>, 10>();
    var var_3 = _wgslsmith_f_op_f32(func_3(min(_wgslsmith_add_u32(global0.x, u_input.a), ~global0.x), arg_0.zx, Struct_1(vec2<i32>(countOneBits(min(1i, 61875i)), var_1), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, u_input.b), vec4<u32>(var_0.a, var_0.a, 10644u, u_input.c.x)), ~_wgslsmith_mult_u32(31658u, var_0.a))), vec4<u32>(~min(_wgslsmith_clamp_u32(u_input.c.x, 4294967295u, 1u), var_0.a), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c, u_input.b.yyz), ~vec3<u32>(u_input.b.x, 50927u, 0u)), 4294967295u, 4294967295u)));
    return StorageBuffer(global0.yx << (u_input.c.zz % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(func_5(Struct_3(func_4(~24955u, func_1(Struct_2(global0.x), -1048f, vec4<f32>(global2.x, global2.x, global2.x, global2.x), 45368u), Struct_1(vec2<i32>(16952i, 1i), vec2<u32>(global0.x, 30612u)), firstLeadingBit(4529u)), select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(vec3<u32>(5541u, global0.x, 3403u))), global1[_wgslsmith_index_u32(17054u, 10u)]), false, Struct_3(func_4(u_input.b.x, Struct_4(vec2<bool>(false, true)), Struct_1(global1[_wgslsmith_index_u32(1u, 10u)], global0.zy), firstLeadingBit(9111u)), vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.c.x, 10u)])));
}

