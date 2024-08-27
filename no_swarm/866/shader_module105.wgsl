struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 20>;

var<private> global1: array<Struct_4, 8> = array<Struct_4, 8>(Struct_4(vec4<u32>(67326u, 56753u, 1u, 106297u), 8523i, vec3<i32>(i32(-2147483648), 2147483647i, 4324i), vec4<bool>(false, false, true, true)), Struct_4(vec4<u32>(4294967295u, 19296u, 17446u, 4294967295u), 0i, vec3<i32>(22194i, -37693i, -83673i), vec4<bool>(false, false, false, true)), Struct_4(vec4<u32>(16129u, 2435u, 78285u, 76872u), 0i, vec3<i32>(i32(-2147483648), 0i, -6861i), vec4<bool>(false, false, false, false)), Struct_4(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 62030u), i32(-2147483648), vec3<i32>(-1i, 0i, 3640i), vec4<bool>(false, false, false, false)), Struct_4(vec4<u32>(1u, 4294967295u, 13562u, 4294967295u), 0i, vec3<i32>(0i, 32923i, 15336i), vec4<bool>(true, true, true, true)), Struct_4(vec4<u32>(32744u, 0u, 1u, 4294967295u), -1i, vec3<i32>(1i, -49175i, -1i), vec4<bool>(true, true, true, false)), Struct_4(vec4<u32>(12401u, 1u, 4294967295u, 60760u), 15902i, vec3<i32>(2147483647i, -7972i, 1i), vec4<bool>(false, false, true, false)), Struct_4(vec4<u32>(5495u, 0u, 3953u, 0u), 22359i, vec3<i32>(-8971i, 0i, 11896i), vec4<bool>(true, true, true, false)));

var<private> global2: array<i32, 26> = array<i32, 26>(25071i, -13076i, 31069i, 19650i, -1247i, -1i, 26548i, 0i, 1i, 1i, -1i, -50400i, 0i, 62906i, 1i, 8597i, 0i, -41797i, -39693i, -1i, 1i, -32698i, 1i, 2147483647i, -3462i, -28255i);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: bool) -> f32 {
    let var_0 = arg_1.a;
    var var_1 = arg_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-444f)), 187f);
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = all(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)));
    var var_1 = global1[_wgslsmith_index_u32(u_input.e.x, 8u)];
    var var_2 = _wgslsmith_f_op_f32(func_3(-global0[_wgslsmith_index_u32(abs(reverseBits(1u)), 20u)], Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-621f, -607f, 442f, 1619f), vec4<f32>(114f, -337f, 1804f, 928f)) + vec4<f32>(-1527f, -923f, 1782f, -145f)), select(var_1.d.yyx, vec3<bool>(true, true, true), select(var_1.d.zzz, var_1.d.xzx, vec3<bool>(false, true, var_1.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 807f, 172f))), u_input.c ^ var_1.c, _wgslsmith_mod_u32(_wgslsmith_sub_u32(1u, var_1.a.x), var_1.a.x >> (var_1.a.x % 32u))), u_input.c.x, !var_1.d.zz), !var_1.d.x));
    let var_3 = !(!vec3<bool>(var_1.d.x, true, !all(var_1.d)));
    var var_4 = Struct_3(Struct_1(vec4<f32>(535f, 327f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1266f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(214f, -478f, true)) - 989f)), !vec3<bool>(false, var_0, var_3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2988f, _wgslsmith_f_op_f32(max(760f, 2016f)), _wgslsmith_f_op_f32(max(473f, -854f)))), vec3<i32>(u_input.c.x, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_1.c.xy, vec2<i32>(-64768i, var_1.c.x)), vec2<i32>(u_input.d.x, u_input.b.x)), var_1.c.x), var_1.a.x), min(select(_wgslsmith_mod_i32(arg_0, 2147483647i), -arg_0, var_1.d.x), u_input.c.x) ^ (i32(-1i) * -1i), !select(!var_1.d.zx, select(select(vec2<bool>(var_1.d.x, false), vec2<bool>(false, var_3.x), var_3.xx), select(var_3.yy, var_1.d.yx, var_3.xy), vec2<bool>(true, true)), var_3.zx));
    return any(!vec3<bool>(!(!var_4.c.x), false, select(true, all(var_1.d.yy), !var_4.c.x)));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_4, 8>();
    let var_0 = u_input.c.x;
    var var_1 = true;
    global1 = array<Struct_4, 8>();
    var var_2 = ~71457u;
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(-188f)), _wgslsmith_div_f32(-845f, _wgslsmith_div_f32(-553f, -470f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(722f - 1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -656f) * 544f)))), select(vec3<bool>(!all(vec4<bool>(true, false, false, true)), true & func_2(global2[_wgslsmith_index_u32(12303u, 26u)]), true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(false, true, 39109i < u_input.b.x), true), true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(877f, 973f, -1763f) - _wgslsmith_div_vec3_f32(vec3<f32>(-568f, 210f, -1000f), vec3<f32>(-978f, 378f, 449f))) * vec3<f32>(1f, 989f, _wgslsmith_div_f32(-709f, -265f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(235f)), -1000f, _wgslsmith_f_op_f32(abs(1009f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1560f, 150f, -1536f))), true)))), min(_wgslsmith_add_vec3_i32(u_input.a, vec3<i32>(~global2[_wgslsmith_index_u32(u_input.e.x, 26u)], global2[_wgslsmith_index_u32(countOneBits(u_input.e.x), 26u)], _wgslsmith_div_i32(u_input.d.x, global2[_wgslsmith_index_u32(u_input.e.x, 26u)]))), vec3<i32>(global2[_wgslsmith_index_u32(1u & ~u_input.e.x, 26u)], _wgslsmith_mod_i32(-1i, global2[_wgslsmith_index_u32(4294967295u, 26u)]) >> (u_input.e.x % 32u), var_0)), ~select(19711u, 4294967295u, any(vec4<bool>(true, true, true, true))));
}

fn func_4(arg_0: Struct_1) -> Struct_4 {
    global2 = array<i32, 26>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(arg_0.a.zy, _wgslsmith_f_op_vec2_f32(-arg_0.c.yx)));
    var var_1 = global1[_wgslsmith_index_u32(arg_0.e, 8u)];
    var var_2 = Struct_3(func_1(), -2147483647i, func_1().b.yy);
    var_2 = Struct_3(Struct_1(arg_0.a, select(var_2.a.b, !var_2.a.b, arg_0.b.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(arg_0.a.wyw)), vec3<f32>(-2369f, var_2.a.c.x, -2557f))))), u_input.a, arg_0.e), ~(1i >> (var_1.a.x % 32u)), select(var_2.c, vec2<bool>(any(var_2.a.b), any(select(vec2<bool>(true, var_2.c.x), arg_0.b.xz, arg_0.b.x))), !vec2<bool>(arg_0.b.x, var_2.a.d.x < -2147483647i)));
    return Struct_4(u_input.e, u_input.a.x, var_1.c, select(!var_1.d, !vec4<bool>(all(var_2.a.b), any(arg_0.b), var_2.a.e == var_1.a.x, var_2.c.x), !(true != (false || var_2.c.x))));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: u32) -> Struct_2 {
    global2 = array<i32, 26>();
    var var_0 = func_1();
    var var_1 = arg_0;
    let var_2 = select(true, all(select(!arg_2.d.xww, vec3<bool>(func_1().b.x, true, !var_0.b.x), true)), func_2(-(i32(-1i) * -var_0.d.x)));
    global1 = array<Struct_4, 8>();
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.c.x))) + _wgslsmith_f_op_f32(f32(-1f) * -414f)), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(abs(-770f)))))), func_1());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.e.x, 8u)];
    var var_1 = func_5(abs(select(~abs(0i), abs(var_0.b), !(!var_0.d.x))), !var_0.d.yzx, func_4(func_1()), 25949u);
    var var_2 = -679f;
    let var_3 = var_0.d.x;
    global2 = array<i32, 26>();
    var var_4 = _wgslsmith_f_op_vec3_f32(var_1.b.c + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(717f, _wgslsmith_f_op_f32(-237f * var_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -780f)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, var_1.b.c.x, false))), -532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + var_1.a.x)))));
    global2 = array<i32, 26>();
    var var_5 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~reverseBits(var_0.a.yx), vec2<u32>(var_0.a.x | select(var_1.b.e, var_1.b.e, var_1.b.b.x == true), 1u)), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_4.x, var_1.a.x, var_0.d.x))), var_4.x)), ~(-vec4<i32>(var_1.b.d.x, var_1.b.d.x, var_1.b.d.x, 1i)) << (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 36015u, var_0.a.x, 6079u), vec4<u32>(0u, 11308u, 0u, u_input.e.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(775f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.x)), var_4.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1625f, 365f, var_1.a.x)), vec3<f32>(-338f, 788f, var_1.b.c.x))))), var_1.a.xy);
}

