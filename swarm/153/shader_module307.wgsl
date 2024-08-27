struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global1: array<f32, 28>;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(4294967295u, 37508u, 39981u));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> vec2<u32> {
    return ~vec2<u32>(4294967295u, 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec2<i32>) -> vec4<bool> {
    global0 = array<bool, 3>();
    var var_0 = vec2<bool>(select(all(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(61283u, 3u)], global0[_wgslsmith_index_u32(arg_1.a.x, 3u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(4294967295u, 3u)]), !vec3<bool>(false, false, global0[_wgslsmith_index_u32(1u, 3u)]))), global0[_wgslsmith_index_u32(abs(16563u), 3u)], global0[_wgslsmith_index_u32(1u, 3u)]), false);
    let var_1 = arg_1;
    let var_2 = select(vec2<i32>(_wgslsmith_dot_vec2_i32(-arg_2, arg_2), _wgslsmith_dot_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, arg_2.x, 1i, arg_2.x), vec4<i32>(u_input.a, 2147483647i, -1i, 18415i))), vec4<i32>(~(-5681i), firstTrailingBit(arg_2.x), -1i, _wgslsmith_div_i32(arg_2.x, u_input.a)))), ~vec2<i32>(-(~u_input.a), abs(arg_2.x)), global0[_wgslsmith_index_u32(arg_0.x, 3u)]);
    var_0 = vec2<bool>(!any(select(vec4<bool>(var_0.x, false, true, false), vec4<bool>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(13740u, 3u)], var_0.x), false)), false);
    return vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.a.x, 28u)]), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(63973u, 28u)], global1[_wgslsmith_index_u32(var_1.a.x, 28u)])))), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~10531u, 28u)]))) < _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(min(8067u >> (arg_1.a.x % 32u), arg_0.x), 28u)])), firstLeadingBit(4294967295u) == ~select(abs(arg_0.x), _wgslsmith_dot_vec2_u32(global2.a.yy, arg_1.a.yz), !var_0.x), any(!vec4<bool>(true, true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.a.x, arg_0.x), 3u)], !global0[_wgslsmith_index_u32(22107u, 3u)])), global0[_wgslsmith_index_u32(min(countOneBits(4294967295u << (0u % 32u)), arg_0.x), 3u)]);
}

fn func_2() -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(2147483647i, 2147483647i, 26216i, 36315i), vec4<i32>(2683i, 48764i, 8357i, u_input.a), vec4<bool>(true, global0[_wgslsmith_index_u32(54619u, 3u)], false, true)), ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), -vec4<i32>(-18307i, u_input.a, u_input.a, u_input.a)), u_input.a);
    global2 = Struct_2(global2.a);
    var_0 = _wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(u_input.a >> (global2.a.x % 32u), _wgslsmith_mult_i32(15497i, 1i)), u_input.a, min(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(8700i, 28718i)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(1i, 51044i, u_input.a))), -2147483647i), -vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 55444i, -1i, u_input.a), vec4<i32>(0i, -2147483647i, u_input.a, u_input.a)), -max(23890i, -2147483647i), countOneBits(2147483647i), u_input.a));
    var var_1 = Struct_2(~global2.a);
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~11420u, 0u), 28u)], vec3<i32>(abs(-2147483647i), _wgslsmith_clamp_i32(1i, 0i, reverseBits(29172i)) & abs(-u_input.a), i32(-1i) * -52448i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~_wgslsmith_sub_u32(109u, _wgslsmith_mult_u32(var_1.a.x, 28894u)), global2.a.x), 3u)], !all(select(func_3(vec3<u32>(1u, var_1.a.x, 4294967295u), Struct_2(global2.a), vec2<i32>(50541i, -2147483647i)), select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 3u)], global0[_wgslsmith_index_u32(var_1.a.x, 3u)], false, true), vec4<bool>(global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(40320u, 3u)], global0[_wgslsmith_index_u32(58453u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)]), global0[_wgslsmith_index_u32(1u, 3u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(global2.a.x, 3u)], global0[_wgslsmith_index_u32(var_1.a.x, 3u)], true), vec4<bool>(true, global0[_wgslsmith_index_u32(7262u, 3u)], global0[_wgslsmith_index_u32(1u, 3u)], global0[_wgslsmith_index_u32(var_1.a.x, 3u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 3u)], true, true, global0[_wgslsmith_index_u32(41167u, 3u)])))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -638f)), vec3<i32>(var_2.b.x, -firstTrailingBit(-8155i) << (select(func_1(global1[_wgslsmith_index_u32(33266u, 28u)], vec2<f32>(1043f, var_2.a), 1u, Struct_1(-1298f, vec3<i32>(var_2.b.x, -26168i, var_2.b.x), true, global0[_wgslsmith_index_u32(4294967295u, 3u)])).x, min(global2.a.x, 35502u), !global0[_wgslsmith_index_u32(var_1.a.x, 3u)]) % 32u), _wgslsmith_dot_vec2_i32(var_2.b.xz << (vec2<u32>(var_1.a.x, var_1.a.x) % vec2<u32>(32u)), -vec2<i32>(-19908i, 46261i))), all(!vec2<bool>(global0[_wgslsmith_index_u32(firstLeadingBit(var_1.a.x), 3u)], var_2.d || false)), true);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    global0 = array<bool, 3>();
    global2 = Struct_2(arg_0.a);
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.a, -1000f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1367f - -755f))) * vec2<f32>(_wgslsmith_f_op_f32(799f + 746f), _wgslsmith_f_op_f32(max(arg_3.a, arg_3.a)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_3.a)) - arg_3.a))), arg_2.d)), _wgslsmith_sub_vec3_i32(-(~arg_2.b), arg_3.b), arg_3.c, any(vec2<bool>(true, true)));
    global0 = array<bool, 3>();
    return Struct_2(global2.a & select(~(vec3<u32>(0u, arg_1.x, 25260u) & global2.a), global2.a, vec3<bool>(true, var_1.d, true)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    global1 = array<f32, 28>();
    global0 = array<bool, 3>();
    global1 = array<f32, 28>();
    var var_0 = Struct_2(vec3<u32>(_wgslsmith_sub_u32(global2.a.x, 1u) & firstLeadingBit(4294967295u), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a.x, 4294967295u, 106394u, arg_0.a.x), vec4<u32>(1151u, arg_0.a.x, 0u, arg_0.a.x))), _wgslsmith_sub_u32(~global2.a.x, 1u)) & abs(~(global2.a << (arg_1.a % vec3<u32>(32u)))));
    var var_1 = arg_1;
    return Struct_2(_wgslsmith_mult_vec3_u32(firstTrailingBit(reverseBits(var_0.a)), global2.a) << (firstTrailingBit(arg_1.a) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~global2.a;
    let var_1 = func_5(func_4(Struct_2(~_wgslsmith_div_vec3_u32(var_0, global2.a)), _wgslsmith_sub_vec2_u32(~vec2<u32>(global2.a.x, var_0.x) ^ ~vec2<u32>(4294967295u, var_0.x), ~func_1(1000f, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), var_0.x, Struct_1(-1000f, vec3<i32>(70658i, 2147483647i, 47282i), false, global0[_wgslsmith_index_u32(68781u, 3u)]))), func_2(), func_2()), Struct_2(_wgslsmith_clamp_vec3_u32(~vec3<u32>(global2.a.x, var_0.x, global2.a.x), vec3<u32>(10290u, var_0.x, var_0.x) | vec3<u32>(var_0.x, var_0.x, global2.a.x), vec3<u32>(0u, 0u, var_0.x)) ^ vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 38752u, 0u), select(var_0.x, 22129u, false), reverseBits(60916u))), func_3(reverseBits(global2.a), Struct_2(firstLeadingBit(vec3<u32>(global2.a.x, 13754u, global2.a.x) & vec3<u32>(global2.a.x, 1u, var_0.x))), firstTrailingBit(vec2<i32>(~u_input.a, _wgslsmith_sub_i32(-26064i, u_input.a)))).xx, func_4(Struct_2(var_0), var_0.zy, Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1153f))), ~vec3<i32>(2147483647i, u_input.a, u_input.a), false, global0[_wgslsmith_index_u32(0u, 3u)]), func_2()));
    global1 = array<f32, 28>();
    let var_2 = _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(var_1.a.x, 28u)]));
    global1 = array<f32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), countOneBits(vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(2147483647i, u_input.a)), vec2<i32>(u_input.a, u_input.a)) ^ abs(_wgslsmith_div_vec2_i32(vec2<i32>(-39500i, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)))), var_2, _wgslsmith_mult_vec2_i32(-abs(vec2<i32>(u_input.a, u_input.a)), ~firstTrailingBit(vec2<i32>(u_input.a, u_input.a))) << (reverseBits(var_0.zy) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1675f) * -1046f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global1[_wgslsmith_index_u32(~93475u, 28u)], -293f))), _wgslsmith_clamp_i32(u_input.a, -1i, -9754i));
}

