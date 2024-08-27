struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true));

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global2: array<u32, 16> = array<u32, 16>(39630u, 15861u, 14297u, 77059u, 4294967295u, 1u, 0u, 583u, 34213u, 9369u, 41398u, 1u, 1u, 17698u, 0u, 64193u);

var<private> global3: i32 = 0i;

var<private> global4: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(-27111i, 21075i), vec2<i32>(2147483647i, -76028i), vec2<i32>(-18647i, i32(-2147483648)), vec2<i32>(20905i, -64945i), vec2<i32>(2147483647i, 46402i), vec2<i32>(-28630i, 0i), vec2<i32>(64299i, 2147483647i), vec2<i32>(12115i, -1i), vec2<i32>(2147483647i, -10094i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-19645i, 16885i), vec2<i32>(-5017i, 2147483647i), vec2<i32>(-4434i, -20213i), vec2<i32>(1i, 8995i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(1i, 0i), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -25311i), vec2<i32>(0i, -15988i), vec2<i32>(31683i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(10021i, 0i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -6788i), vec2<i32>(11131i, -1i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    var var_0 = global1.x;
    let var_1 = !global1.x;
    let var_2 = _wgslsmith_f_op_f32(298f - _wgslsmith_f_op_f32(f32(-1f) * -329f));
    var var_3 = vec4<i32>(u_input.d.x, -((~(-61361i) & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x))) >> (1u % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -(~vec4<i32>(u_input.d.x, -45491i, u_input.d.x, -1i)), -(firstTrailingBit(vec4<i32>(u_input.d.x, -1774i, u_input.d.x, 8763i)) & (vec4<i32>(u_input.d.x, u_input.d.x, -1i, u_input.d.x) & vec4<i32>(0i, 62601i, u_input.d.x, -6555i)))), u_input.d.x);
    global2 = array<u32, 16>();
    return abs(-1i);
}

fn func_2(arg_0: vec3<u32>) -> i32 {
    var var_0 = select(u_input.d.x, u_input.d.x, true);
    global3 = -25105i;
    var_0 = u_input.d.x;
    let var_1 = !select(global1.yyw, select(!global1.zyx, !global1.xyy, any(!vec3<bool>(global1.x, true, global1.x))), select(u_input.d.x, max(u_input.d.x, u_input.d.x), true) != (func_3() >> (4294967295u % 32u)));
    var var_2 = vec3<bool>(true, true, true);
    return -1i;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> bool {
    var var_0 = ~(-vec4<i32>(~(~u_input.d.x), select(u_input.d.x, 2147483647i, false && arg_1), _wgslsmith_add_i32(abs(-3187i), _wgslsmith_mod_i32(u_input.d.x, -33138i)), func_2(max(vec3<u32>(23818u, global2[_wgslsmith_index_u32(u_input.a.x, 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(86407u, 16u)], 16u)]), vec3<u32>(u_input.c.x, u_input.a.x, 1u)))));
    global1 = select(!vec4<bool>(false, arg_1 || (global2[_wgslsmith_index_u32(4294967295u, 16u)] > 1u), !all(vec4<bool>(global1.x, true, arg_1, true)), all(vec3<bool>(arg_0.a, arg_1, arg_0.a))), !(!(!select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(arg_1, true, global1.x, arg_1), false))), all(select(global1.xzz, vec3<bool>(true, !arg_0.a, arg_0.a), !(!global1.zww))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f * 1277f))), _wgslsmith_f_op_f32(1522f + _wgslsmith_f_op_f32(ceil(1025f)))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(826f * _wgslsmith_f_op_f32(f32(-1f) * -185f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(306f, -1326f))));
    let var_2 = any(select(!select(global1.yy, !global1.xw, !arg_1), select(!(!global1.xz), vec2<bool>(any(global1.zyy), true), !select(false, false, arg_0.a)), global1.x));
    return all(select(global1.zy, !select(vec2<bool>(true, false), vec2<bool>(false, global1.x), false), false));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 15>();
    global3 = u_input.d.x;
    global1 = !(!(!select(select(vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, global1.x, false, false)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, global1.x, true, global1.x), global1.x), true)));
    var var_0 = !select(vec4<bool>(false, select(any(vec3<bool>(true, global1.x, global1.x)), func_1(Struct_1(global1.x), global1.x), false), true, global1.x), vec4<bool>(global1.x, true, all(vec3<bool>(true, false, false)), true), func_1(Struct_1(any(vec4<bool>(false, global1.x, true, global1.x))), true));
    let var_1 = u_input.d.x;
    var var_2 = max(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(84179i, var_1 | -326i, -16356i, i32(-1i) * -27764i)), vec4<i32>(-8183i, ~(~var_1), countOneBits(1654i ^ u_input.d.x), 2147483647i), (~vec4<i32>(2147483647i, 31769i, u_input.d.x, -2147483647i) << (select(vec4<u32>(4294967295u, u_input.c.x, 20464u, 33067u), vec4<u32>(u_input.a.x, 0u, global2[_wgslsmith_index_u32(4294967295u, 16u)], u_input.c.x), vec4<bool>(var_0.x, global1.x, false, true)) % vec4<u32>(32u))) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(34333u, 16u)], 16u)], 16u)], global2[_wgslsmith_index_u32(u_input.b.x, 16u)], 4294967295u), vec4<u32>(global2[_wgslsmith_index_u32(1u, 16u)], 4294967295u, u_input.a.x, 1u), vec4<u32>(5322u, 55703u, 43155u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 16u)], 16u)])), abs(vec4<u32>(1u, u_input.c.x, 5807u, 4294967295u)), global1.x) % vec4<u32>(32u))), vec4<i32>(firstTrailingBit(_wgslsmith_clamp_i32(firstTrailingBit(u_input.d.x), u_input.d.x, select(u_input.d.x, -23164i, true))), abs(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_1, -2147483647i, u_input.d.x, -59667i), vec4<i32>(u_input.d.x, -9653i, var_1, u_input.d.x))), countOneBits(-2147483647i) >> (~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)] % 32u), -43237i));
    var var_3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-717f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -415f)))), -3842i << ((abs(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(47550u, 16u)], global2[_wgslsmith_index_u32(9095u, 16u)])) << (u_input.a.x % 32u)) % 32u));
}

