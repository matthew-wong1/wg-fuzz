struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 7>;

var<private> global2: Struct_1 = Struct_1(true, -1309f, vec2<f32>(1243f, 1000f), vec3<i32>(-1448i, i32(-2147483648), 8808i), vec3<i32>(i32(-2147483648), -1i, 0i));

var<private> global3: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(false, 194f, vec2<f32>(-747f, 417f), vec3<i32>(1i, -3521i, -8077i), vec3<i32>(-48575i, -1i, 0i)), Struct_1(false, -2410f, vec2<f32>(-1000f, -369f), vec3<i32>(17172i, -19249i, i32(-2147483648)), vec3<i32>(14141i, -10977i, 38607i)), Struct_1(false, 204f, vec2<f32>(-1369f, 878f), vec3<i32>(-1i, 2147483647i, 3014i), vec3<i32>(-1i, -95767i, 0i)), Struct_1(false, -277f, vec2<f32>(1396f, -289f), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(56940i, 1i, -6651i)), Struct_1(true, 1491f, vec2<f32>(423f, -997f), vec3<i32>(2147483647i, 78368i, -14486i), vec3<i32>(0i, 52775i, 23348i)), Struct_1(false, 513f, vec2<f32>(-599f, 2125f), vec3<i32>(-20424i, 23363i, -1245i), vec3<i32>(-1i, 26121i, 14900i)), Struct_1(true, -165f, vec2<f32>(1905f, -1000f), vec3<i32>(32679i, 19729i, 0i), vec3<i32>(-49675i, 43192i, -2766i)), Struct_1(true, -1327f, vec2<f32>(134f, -792f), vec3<i32>(-1i, i32(-2147483648), 25934i), vec3<i32>(-1i, -1i, -15220i)), Struct_1(false, 516f, vec2<f32>(-1010f, -389f), vec3<i32>(-65971i, 1i, -2441i), vec3<i32>(2147483647i, 62330i, 32709i)), Struct_1(false, 474f, vec2<f32>(-541f, 904f), vec3<i32>(36961i, -57582i, 44428i), vec3<i32>(15315i, i32(-2147483648), -48641i)), Struct_1(true, 467f, vec2<f32>(-930f, 1248f), vec3<i32>(0i, -67592i, 1i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648))), Struct_1(true, -2122f, vec2<f32>(901f, 552f), vec3<i32>(-20114i, 6284i, 29913i), vec3<i32>(21339i, -40615i, 0i)), Struct_1(false, 458f, vec2<f32>(-513f, 785f), vec3<i32>(i32(-2147483648), 0i, 2147483647i), vec3<i32>(2147483647i, 7883i, 12199i)), Struct_1(false, 388f, vec2<f32>(-116f, -1949f), vec3<i32>(0i, 0i, 0i), vec3<i32>(-11105i, 12449i, 1i)), Struct_1(false, -1904f, vec2<f32>(935f, -1695f), vec3<i32>(40700i, 1i, 0i), vec3<i32>(-1i, 0i, -1i)), Struct_1(true, 1102f, vec2<f32>(216f, 958f), vec3<i32>(51263i, -59602i, 0i), vec3<i32>(0i, -6225i, i32(-2147483648))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> vec4<u32> {
    let var_0 = vec4<bool>(1i < -(~(-40823i) | arg_0.b), ~_wgslsmith_div_i32(global2.e.x, 3104i) == -(i32(-1i) * -arg_0.b), !(!(0u >= arg_0.a.x)) & all(select(vec3<bool>(arg_0.c.a, true, arg_0.c.a), !vec3<bool>(global2.a, arg_0.c.a, true), !vec3<bool>(true, false, arg_1.a))), false);
    let var_1 = Struct_3(global3[_wgslsmith_index_u32(4294967295u, 16u)], -31124i, arg_0.c.c.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global2.c.x, arg_0.c.c.x, 1000f) + vec4<f32>(-343f, arg_1.b, arg_1.c.x, 1308f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(443f, -566f, -1000f, arg_0.c.b)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(460f, arg_0.c.b, -1630f, arg_0.c.c.x) - vec4<f32>(474f, 1770f, arg_0.c.c.x, 1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -703f, global2.b, -803f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.c.x, -811f, 625f, -1400f)), !global2.a)), !vec4<bool>(arg_1.a, false, false, global2.a)))));
    let var_2 = any(!var_0.xz);
    var var_3 = Struct_2(_wgslsmith_add_vec3_u32(vec3<u32>(1u | global1[_wgslsmith_index_u32(arg_0.a.x, 7u)], arg_0.a.x >> (global1[_wgslsmith_index_u32(33907u, 7u)] % 32u), 0u) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(45672u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(18142u, 7u)], 7u)]), arg_3), vec3<u32>(arg_0.a.x, arg_3.x, select(_wgslsmith_sub_u32(4294967295u, 41889u), arg_3.x, false))), u_input.a, var_1.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b * arg_2)) < -711f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-229f + _wgslsmith_div_f32(global2.c.x, global2.c.x)), -795f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c.c.x, -280f), global2.c, var_1.a.a)), var_1.a.c, false || var_1.a.a)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_0.c.c)))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 1i, arg_1.d.x), ~vec3<i32>(u_input.a.x, 56871i, -88761i)), _wgslsmith_div_vec3_i32(select(select(u_input.a.wyz, u_input.a.wzz, vec3<bool>(var_2, false, false)), vec3<i32>(arg_0.b, u_input.a.x, 78095i), var_2), vec3<i32>(select(arg_1.e.x, -9159i, true), -4108i, _wgslsmith_sub_i32(0i, 53040i)))));
    global0 = reverseBits(firstLeadingBit(firstTrailingBit(18775i))) | _wgslsmith_mult_i32(-2147483647i, _wgslsmith_add_i32(_wgslsmith_add_i32(-u_input.a.x, ~arg_0.b), -51250i));
    return vec4<u32>(~var_3.a.x, ~0u, ~arg_0.a.x, arg_3.x);
}

fn func_2(arg_0: vec4<i32>) -> f32 {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) - 1269f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.c), vec2<f32>(_wgslsmith_f_op_f32(floor(-221f)), _wgslsmith_f_op_f32(-global2.c.x))), vec3<i32>(arg_0.x, u_input.a.x ^ -17218i, arg_0.x), vec3<i32>(_wgslsmith_dot_vec4_i32(arg_0, ~arg_0 << (func_3(Struct_4(vec3<u32>(global1[_wgslsmith_index_u32(3638u, 7u)], 31398u, global1[_wgslsmith_index_u32(11651u, 7u)]), arg_0.x, global3[_wgslsmith_index_u32(1u, 16u)]), Struct_1(false, global2.c.x, vec2<f32>(1014f, global2.b), vec3<i32>(u_input.a.x, u_input.a.x, 0i), u_input.a.xxz), 1000f, vec3<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 18318u)) % vec4<u32>(32u))), max(-2147483647i, _wgslsmith_add_i32(~u_input.a.x, _wgslsmith_div_i32(arg_0.x, 12974i))), ~arg_0.x));
    var var_1 = Struct_2(_wgslsmith_mult_vec3_u32(vec3<u32>(50230u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)] ^ 8247u, 14238u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 23881u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 7u)], 7u)], 7u)], 7u)]), ~vec3<u32>(0u, 1u, 1u))) << (select(reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(1u, 7u)], 4294967295u, 53245u), vec3<u32>(global1[_wgslsmith_index_u32(10935u, 7u)], 0u, global1[_wgslsmith_index_u32(60295u, 7u)]))), vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global1[_wgslsmith_index_u32(8527u, 7u)]), 7u)], 0u, ~27741u), !select(vec3<bool>(global2.a, false, false), vec3<bool>(false, true, var_0.a), global2.a)) % vec3<u32>(32u)), u_input.a, Struct_1(all(select(!vec4<bool>(true, var_0.a, var_0.a, var_0.a), select(vec4<bool>(false, false, var_0.a, global2.a), vec4<bool>(true, false, global2.a, false), vec4<bool>(var_0.a, global2.a, true, false)), vec4<bool>(global2.a, var_0.a, var_0.a, true))), var_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.x, 385f)), select(global2.e, vec3<i32>(arg_0.x, arg_0.x, -22387i), global2.a), -(~select(vec3<i32>(17809i, global2.d.x, global2.e.x), vec3<i32>(2147483647i, var_0.d.x, var_0.e.x), var_0.a))), global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(min(~global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(func_3(Struct_4(vec3<u32>(26848u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], 7u)]), -2147483647i, Struct_1(var_0.a, -947f, vec2<f32>(var_0.c.x, global2.b), arg_0.zzw, vec3<i32>(-67048i, u_input.a.x, global2.d.x))), global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], 16u)], 709f, vec3<u32>(global1[_wgslsmith_index_u32(80147u, 7u)], 8783u, 0u)).x, 7u)]), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(min(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)]), _wgslsmith_add_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21378u, 7u)], 7u)], 7u)], 7u)], 10420u)), 7u)])), 16u)]);
    let var_2 = Struct_2(~(~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_1.a.x, var_1.a.x), var_1.a))), vec4<i32>(~_wgslsmith_mult_i32(global2.d.x, ~var_1.c.d.x), -10247i, arg_0.x & reverseBits(_wgslsmith_mod_i32(33146i, 2170i)), var_1.c.d.x), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(33177u, ~var_1.a.x), 16u)], Struct_1(any(select(vec2<bool>(var_0.a, true), vec2<bool>(true, false), select(vec2<bool>(var_1.d.a, false), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, global2.a)))), _wgslsmith_f_op_f32(-569f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(750f, var_0.c.x)) - -859f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1511f * 507f), 566f), _wgslsmith_f_op_vec2_f32(var_1.c.c - _wgslsmith_f_op_vec2_f32(ceil(var_1.c.c))))), abs(countOneBits(select(var_1.d.d, global2.d, vec3<bool>(global2.a, false, true)))), vec3<i32>(firstLeadingBit(0i), var_0.d.x, ~73203i >> (max(var_1.a.x, 1u) % 32u))));
    var var_3 = select(vec2<bool>(true, var_0.a), !(!select(!vec2<bool>(global2.a, true), select(vec2<bool>(false, true), vec2<bool>(true, var_1.d.a), vec2<bool>(false, var_0.a)), vec2<bool>(var_0.a, true))), vec2<bool>(var_2.d.a, false));
    var var_4 = -2147483647i;
    return _wgslsmith_f_op_f32(-386f + _wgslsmith_f_op_f32(abs(1000f)));
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(-1i) * -u_input.a)));
    var_0 = -2215f;
    global1 = array<u32, 7>();
    var var_1 = Struct_3(Struct_1(global2.a, global2.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global2.c + global2.c), vec2<f32>(global2.b, global2.b))))), reverseBits(max(u_input.a.zwy, u_input.a.www)) & global2.e, global2.d & ~global2.d), global2.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f + global2.c.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.c.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -174f))), global2.c.x, global2.b, _wgslsmith_f_op_f32(step(265f, global2.b))));
    let var_2 = ~reverseBits(~vec2<u32>(countOneBits(1u), 0u));
    return countOneBits(global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.e.x;
    let var_0 = Struct_1(!global2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), 467f, select(global2.e.x == -2147483647i, true, global2.a))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_f32(trunc(global2.c.x)), global2.a)))), global2.c, func_1(), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(36806i, 2147483647i, global2.e.x), vec3<i32>(-1i, global2.e.x, -3217i) ^ global2.e), -countOneBits(u_input.a.xzz)), _wgslsmith_sub_vec3_i32(vec3<i32>(firstLeadingBit(u_input.a.x), u_input.a.x, _wgslsmith_mult_i32(-2147483647i, -1i)), abs(vec3<i32>(global2.e.x, 1i, -26314i)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, _wgslsmith_f_op_f32(ceil(var_0.b)), _wgslsmith_f_op_f32(abs(1070f))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.c.x, var_0.c.x, 1744f))), vec3<f32>(-1020f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), 763f)), _wgslsmith_f_op_f32(-var_0.b)))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(floor(490f))) - -280f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.c.x))))));
    let var_3 = 56814u;
    var var_4 = _wgslsmith_add_i32(min(-9310i, reverseBits(abs(2147483647i))), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~select(func_3(Struct_4(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], var_3, var_3), var_0.d.x, var_0), global3[_wgslsmith_index_u32(25027u, 16u)], _wgslsmith_f_op_f32(-var_2.x), select(vec3<u32>(16513u, 4294967295u, 1u), vec3<u32>(global1[_wgslsmith_index_u32(0u, 7u)], 93438u, 1u), vec3<bool>(var_0.a, false, true))), _wgslsmith_mult_vec4_u32(vec4<u32>(var_3, 4294967295u, 53220u, var_3), vec4<u32>(global1[_wgslsmith_index_u32(36420u, 7u)], 0u, global1[_wgslsmith_index_u32(var_3, 7u)], 4294967295u)), select(vec4<bool>(var_0.a, false, true, false), !vec4<bool>(global2.a, false, false, false), vec4<bool>(false, true, false, true))), reverseBits(global1[_wgslsmith_index_u32(abs(4294967295u), 7u)]), var_0.b, -min(firstTrailingBit(vec3<i32>(2147483647i, var_0.e.x, 0i)), var_0.d), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(global2.b))), var_1.yy, vec2<bool>(false & var_0.a, global2.c.x >= var_1.x))), vec2<f32>(1195f, _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(func_2(vec4<i32>(-1i, u_input.a.x, var_0.d.x, 26263i))))))));
}

