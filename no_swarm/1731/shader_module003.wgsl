struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(7478i, 12525i);

var<private> global1: array<u32, 2>;

var<private> global2: array<u32, 19>;

var<private> global3: array<u32, 3>;

var<private> global4: vec2<f32> = vec2<f32>(1000f, -735f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = global4.x;
    let var_1 = 8080i | abs(firstTrailingBit(-1i));
    let var_2 = _wgslsmith_mult_vec2_i32(-u_input.a.yy, abs(u_input.a.xz)) & -(vec2<i32>(_wgslsmith_div_i32(-2147483647i, 2147483647i), u_input.a.x) ^ vec2<i32>(var_1 | 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-53178i, u_input.a.x), vec2<i32>(-85144i, 2147483647i))));
    global1 = array<u32, 2>();
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1095f, -902f, global4.x))), 4294967295u, ~global1[_wgslsmith_index_u32(~64492u << (_wgslsmith_mod_u32(20315u, 1u) % 32u), 2u)]), 2147483647i, Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, global4.x, -284f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1130f, -989f, global4.x), vec3<f32>(363f, global4.x, global4.x), false))))), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 90120u, u_input.c), vec3<u32>(global1[_wgslsmith_index_u32(524u, 2u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(15722u, 2u)], 19u)], 0u)) << (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 19u)], 19u)] % 32u), _wgslsmith_dot_vec3_u32(min(vec3<u32>(854u, u_input.b.x, 4294967295u), vec3<u32>(4294967295u, 1u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(76811u, 3u)], global1[_wgslsmith_index_u32(76793u, 2u)], global1[_wgslsmith_index_u32(8174u, 2u)]), vec3<u32>(97440u, global1[_wgslsmith_index_u32(u_input.c, 2u)], 4294967295u)))), select(0u, max(~global2[_wgslsmith_index_u32(132522u, 19u)], 101893u), global3[_wgslsmith_index_u32(abs(0u), 3u)] == _wgslsmith_mod_u32(global3[_wgslsmith_index_u32(u_input.b.x, 3u)], global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(40294u, 2u)], 3u)]))), select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false)), vec4<bool>(true, true, true, true), _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~14289u, 19u)], 1u << (global1[_wgslsmith_index_u32(0u, 2u)] % 32u)) >= 1u));
    return _wgslsmith_f_op_vec3_f32(floor(var_3.a.a));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = global0.x;
    var var_1 = -345f;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-396f, -1012f, global4.x) - vec3<f32>(494f, global4.x, -211f))))), 1u, ~32860u), abs(0i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(602f, global4.x, 613f) - vec3<f32>(549f, global4.x, global4.x))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3())))), global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 3u)], 3u)] ^ global1[_wgslsmith_index_u32(10368u, 2u)]), 2u)], 19u)], 1u ^ ~(~global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(39513u, 2u)], 2u)], 3u)])), select(vec4<bool>(true, true, !all(arg_0), arg_0.x), !vec4<bool>(arg_0.x | arg_0.x, arg_0.x, true, true), select(any(select(arg_0, arg_0, arg_0)), any(!vec3<bool>(arg_0.x, arg_0.x, false)), all(select(vec2<bool>(true, arg_0.x), arg_0.zx, arg_0.x)))));
    global2 = array<u32, 19>();
    global1 = array<u32, 2>();
    return Struct_2(Struct_1(var_2.a.a, _wgslsmith_mod_u32(u_input.b.x, min(~4294967295u, global3[_wgslsmith_index_u32(u_input.b.x, 3u)])), 10099u), _wgslsmith_dot_vec3_i32(reverseBits(u_input.a.wzz), vec3<i32>(abs(global0.x), _wgslsmith_mod_i32(-720i, 1i), global0.x)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.c.a) + _wgslsmith_f_op_vec3_f32(-var_2.c.a)), vec3<f32>(_wgslsmith_f_op_f32(-898f - global4.x), -622f, global4.x)), min(~global3[_wgslsmith_index_u32(0u, 3u)], 0u ^ abs(global3[_wgslsmith_index_u32(4294967295u, 3u)])), _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.c, 1u), max(31757u, u_input.b.x | 6227u))), vec4<bool>(false, !arg_0.x, _wgslsmith_add_i32(var_2.b, var_2.b) < global0.x, arg_0.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(~firstLeadingBit(~1u ^ global1[_wgslsmith_index_u32(u_input.c, 2u)]), 3u)];
    global4 = arg_0.c.a.yy;
    var var_1 = ~vec3<u32>(~68246u, ~_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 39045u), 19u)], abs(1u)), 0u);
    global4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1.a.a.zx)));
    var var_2 = func_2(vec3<bool>(!(true || arg_0.d.x), any(select(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_0.d.x), arg_0.d.www, arg_0.d.x)), arg_0.d.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1890f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.a.x) - _wgslsmith_f_op_f32(floor(global4.x))))), _wgslsmith_div_f32(-682f, -833f)));
}

fn func_5(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 3u)], 19u)];
    let var_1 = select(vec3<i32>(~(-25887i), func_2(select(arg_3.d.ywy, vec3<bool>(true, arg_3.d.x, arg_3.d.x), vec3<bool>(false, arg_3.d.x, arg_3.d.x))).b, -59508i), vec3<i32>(arg_3.b, 0i, 0i >> (~_wgslsmith_sub_u32(13417u, arg_3.c.c) % 32u)), select(vec3<bool>(all(arg_3.d), arg_3.d.x, -37546i > _wgslsmith_dot_vec2_i32(u_input.a.zz, u_input.a.xz)), arg_3.d.zzx, arg_3.d.wyz));
    global3 = array<u32, 3>();
    var var_2 = countOneBits(-u_input.a.ywx);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -940f) * _wgslsmith_f_op_f32(global4.x + 1000f)));
    return arg_3.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> i32 {
    global1 = array<u32, 2>();
    let var_0 = ~(~u_input.c);
    let var_1 = 79407u;
    var var_2 = Struct_2(func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(vec3<f32>(-926f, global4.x, 1869f), 16878u, 77721u), u_input.a.x, Struct_1(vec3<f32>(-1571f, global4.x, global4.x), 1u, 52347u), vec4<bool>(true, false, false, true)), func_2(vec3<bool>(false, true, false)))), 644f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-719f, global4.x, 1490f, global4.x), vec4<f32>(global4.x, global4.x, 316f, global4.x), vec4<bool>(true, true, false, true))) + vec4<f32>(1681f, -154f, global4.x, global4.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, 1642f, global4.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, 1514f) - vec2<f32>(123f, global4.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(321f, global4.x))))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1316f, global4.x, -1052f))), ~0u, reverseBits(global1[_wgslsmith_index_u32(0u, 2u)])), abs(-45537i), func_2(func_2(vec3<bool>(false, false, false)).d.wzy).a, func_2(vec3<bool>(false, false, false)).d)), firstTrailingBit(-reverseBits(arg_1)), func_5(-627f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(943f, global4.x, 131f, global4.x) + vec4<f32>(global4.x, 702f, 1565f, 1197f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-2143f, global4.x, 1385f, -872f), vec4<f32>(global4.x, global4.x, global4.x, -302f))), _wgslsmith_div_vec4_f32(vec4<f32>(global4.x, global4.x, global4.x, 160f), vec4<f32>(-355f, global4.x, global4.x, global4.x)), false))), _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(-global4.x), vec4<f32>(global4.x, 1189f, -216f, global4.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(179f, global4.x)), Struct_2(Struct_1(vec3<f32>(global4.x, global4.x, global4.x), 4294967295u, 10282u), -2147483647i, Struct_1(vec3<f32>(global4.x, global4.x, -666f), 0u, global2[_wgslsmith_index_u32(var_1, 19u)]), vec4<bool>(true, false, true, false))).a.xx * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global4.x, -280f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1644f, -1023f))))), func_2(select(func_2(vec3<bool>(true, true, true)).d.zzz, vec3<bool>(false, true, false), true))), vec4<bool>(false, func_2(func_2(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)).d.xzx).d.x, ~(1508u >> (0u % 32u)) > func_2(func_2(vec3<bool>(true, false, true)).d.yyw).a.c, true));
    global3 = array<u32, 3>();
    return -81080i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(4999i, u_input.a.x, u_input.a.x), ~countOneBits((global0.x << (global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 3u)] % 32u)) ^ _wgslsmith_add_i32(global0.x, global0.x)), min(global0.x >> (0u % 32u), _wgslsmith_mult_i32(global0.x, func_1(vec4<u32>(global3[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(u_input.c, 19u)], global2[_wgslsmith_index_u32(9916u, 19u)], 21742u), -41827i, global3[_wgslsmith_index_u32(81407u, 3u)]))));
    global1 = array<u32, 2>();
    let var_1 = _wgslsmith_sub_u32(reverseBits(1u), 1u);
    let var_2 = u_input.a.xwy;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -843f, -134f)) + vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(select(global4.x, -688f, false)), _wgslsmith_f_op_f32(f32(-1f) * -2069f))), global2[_wgslsmith_index_u32(~(_wgslsmith_div_u32(u_input.c, 0u) << (48260u % 32u)), 19u)], _wgslsmith_dot_vec2_u32(abs(u_input.b), u_input.b >> (abs(u_input.b) % vec2<u32>(32u)))), i32(-1i) * -11695i, Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 562f, global4.x)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-589f, -1434f, global4.x)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global4.x, global4.x, global4.x))), vec3<bool>(true, any(vec4<bool>(true, false, true, false)), true))), u_input.c, countOneBits(max(~u_input.b.x, var_1))), vec4<bool>(func_2(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true)).d.x && !any(vec3<bool>(false, false, false)), !all(vec4<bool>(true, false, true, true)) & true, true, true));
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_3.c.a), firstLeadingBit(~_wgslsmith_clamp_u32(~0u, 4294967295u, ~0u)), func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-555f)) * 1489f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.x + -1000f), -168f, 466f, _wgslsmith_f_op_f32(trunc(global4.x)))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(var_3.c.a.x + var_3.c.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1187f)))), var_3).c);
    let var_5 = global1[_wgslsmith_index_u32(12175u, 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_4.a.x, var_4.a.x, 1421f), func_2(select(func_2(vec3<bool>(true, false, var_3.d.x)).d.zxw, var_3.d.zyy, var_3.d.x)).c.a.xz);
}

