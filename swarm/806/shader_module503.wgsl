struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> vec4<u32> {
    var var_0 = arg_1.a.x;
    var var_1 = vec2<i32>(-2908i, min(~_wgslsmith_mult_i32(-29504i, arg_0), _wgslsmith_sub_i32(-40329i ^ _wgslsmith_mult_i32(23823i, u_input.a.x), -10291i)));
    let var_2 = true;
    var var_3 = abs(reverseBits(vec2<i32>(arg_0, _wgslsmith_div_i32(select(arg_0, arg_0, true), 25500i))));
    let var_4 = !vec4<bool>(true, false, select(true, false, true) || select(true, false, arg_1.c), var_2);
    return _wgslsmith_add_vec4_u32(~(~(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(20885u, u_input.b, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 69833u, 37173u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 26362u, 17051u, u_input.b), vec4<u32>(1u, 16945u, 4294967295u, 0u))), ~vec4<u32>(u_input.b, 4294967295u, u_input.b, 16867u) << (vec4<u32>(u_input.b << (u_input.b % 32u), _wgslsmith_sub_u32(62283u, u_input.b), 62713u, ~54128u) % vec4<u32>(32u)), max(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(32159u, 23826u, u_input.b, 139234u)), abs(vec4<u32>(1u, u_input.b, 51368u, 4294967295u)), ~vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b)), ~abs(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 27>();
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)))), -2028f, _wgslsmith_f_op_f32(arg_1.a.x - -1480f)), arg_1.c, !all(select(select(vec4<bool>(arg_1.b, arg_1.b, false, true), vec4<bool>(false, true, false, true), arg_2.b), !vec4<bool>(arg_1.b, true, false, arg_2.c), all(vec3<bool>(true, false, true)))));
    let var_1 = vec2<i32>(-(~_wgslsmith_mult_i32(0i, ~arg_0.x)), -2147483647i);
    var_0 = arg_2;
    var var_2 = arg_2;
    return ~(~0u << ((~arg_3.x ^ ~select(arg_3.x, 0u, var_0.b)) % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(1012f + 417f), 400f))), true, all(vec4<bool>(true, true, true, true))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2160f), _wgslsmith_div_f32(-1000f, 658f), 1681f), true, false), global0[_wgslsmith_index_u32(abs(func_4(-(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x) ^ u_input.a.wwz), global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(36513u, u_input.b), 27u)], Struct_1(vec3<f32>(104f, -351f, -399f), true, true), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u) << (vec4<u32>(u_input.b, 104476u, u_input.b, u_input.b) % vec4<u32>(32u)), func_3(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 27u)], 2298f)))), 27u)]);
    var var_1 = global0[_wgslsmith_index_u32(abs(4294967295u), 27u)];
    var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, 1u), u_input.b), 27u)], var_0.b, var_0.c);
    let var_2 = func_3(~(u_input.a.x << (u_input.b % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -1624f, -419f)))), any(select(vec4<bool>(false, true, true, var_1.c), vec4<bool>(true, var_1.b, var_0.c.b, var_0.a.b), vec4<bool>(var_0.b.b, true, false, false))), all(select(vec2<bool>(var_1.c, false), vec2<bool>(var_0.a.c, var_1.c), vec2<bool>(false, var_1.c)))), 1413f).yx | vec2<u32>((16506u & abs(u_input.b)) | 0u, _wgslsmith_sub_u32(min(firstTrailingBit(u_input.b), 1u), _wgslsmith_mod_u32(~u_input.b, reverseBits(0u))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1253f + 998f));
    return global0[_wgslsmith_index_u32(max(select(u_input.b, u_input.b, var_1.c), abs(116512u)), 27u)];
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = arg_0.a.c;
    return Struct_2(func_2(), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-arg_0.c.a))), all(!(!vec4<bool>(true, true, false, arg_0.c.c))), func_2().b), Struct_1(vec3<f32>(1206f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1288f))), _wgslsmith_f_op_f32(arg_1.a.a.x * arg_1.a.a.x)), true, any(select(!vec3<bool>(arg_0.c.b, arg_0.c.c, false), !vec3<bool>(var_0, var_0, arg_1.c.c), -1000f != arg_2.x))));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: f32) -> u32 {
    let var_0 = func_5(Struct_2(func_2(), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(336f, 621f, arg_2)))), arg_0.b.c, all(select(vec4<bool>(arg_0.c.b, true, false, true), vec4<bool>(arg_0.c.b, arg_0.b.b, false, false), vec4<bool>(true, false, arg_0.c.c, arg_0.b.c)))), Struct_1(vec3<f32>(arg_0.b.a.x, _wgslsmith_f_op_f32(abs(arg_0.b.a.x)), _wgslsmith_f_op_f32(floor(arg_0.c.a.x))), true, true)), arg_0, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1493f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.x))))));
    global0 = array<Struct_1, 27>();
    let var_1 = arg_0.c;
    global0 = array<Struct_1, 27>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_1.a, arg_0.a.a)))) - func_5(func_5(func_5(var_0, Struct_2(Struct_1(vec3<f32>(-1000f, -1154f, var_1.a.x), true, var_0.c.b), arg_0.b, Struct_1(var_1.a, var_0.c.c, true)), vec2<f32>(var_0.a.a.x, arg_0.b.a.x)), arg_0, _wgslsmith_f_op_vec2_f32(vec2<f32>(1222f, -821f) - var_0.c.a.yy)), Struct_2(Struct_1(vec3<f32>(-301f, var_1.a.x, 119f), true, true), var_1, Struct_1(var_1.a, false, arg_0.b.c)), var_0.a.a.zx).c.a), any(!(!vec2<bool>(arg_0.b.c, var_1.c))), any(select(vec2<bool>(var_0.b.b, all(vec3<bool>(var_0.a.c, var_0.b.b, var_0.a.b))), select(select(vec2<bool>(arg_0.c.c, var_1.b), vec2<bool>(var_1.b, var_1.c), true), select(vec2<bool>(var_1.c, true), vec2<bool>(arg_0.a.b, var_0.b.b), var_0.a.b), select(vec2<bool>(arg_0.c.b, var_0.a.c), vec2<bool>(arg_0.b.c, false), vec2<bool>(var_0.c.c, arg_0.c.b))), !(1u != arg_1))));
    return 1u;
}

fn func_6(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = select(select(vec3<bool>(!any(vec3<bool>(arg_2.b, false, false)), arg_1, any(vec2<bool>(false, false))), vec3<bool>(u_input.a.x != _wgslsmith_dot_vec2_i32(u_input.a.yz, vec2<i32>(-42381i, u_input.a.x)), arg_1, arg_2.c), arg_1), vec3<bool>(false, any(select(select(vec3<bool>(arg_1, arg_2.b, true), vec3<bool>(arg_2.c, arg_2.b, false), arg_2.c), !vec3<bool>(false, arg_1, arg_2.b), !vec3<bool>(false, arg_1, arg_1))), 1u <= ~(5453u | u_input.b)), false);
    var var_1 = ~4294967295u;
    var var_2 = vec4<bool>(var_0.x, var_0.x & arg_1, any(vec3<bool>(92160i >= ~u_input.a.x, arg_1, all(!vec3<bool>(arg_2.b, true, true)))), var_0.x);
    var var_3 = vec2<f32>(_wgslsmith_div_f32(-346f, _wgslsmith_f_op_f32(-arg_2.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1873f))));
    var_0 = var_2.ywy;
    return select(func_3(~(0i), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) + vec3<f32>(arg_2.a.x, arg_2.a.x, -1541f)), false, arg_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(ceil(336f))))).yyw, ~(~vec3<u32>(0u, 65126u, u_input.b)) << (~select(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, 4294967295u, 4294967295u)), select(vec3<u32>(u_input.b, 4294967295u, 70234u), vec3<u32>(26396u, u_input.b, u_input.b), var_2.wxw), 1u == u_input.b) % vec3<u32>(32u)), _wgslsmith_f_op_f32(func_2().a.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_3.x, arg_2.a.x))) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - arg_2.a.x) * arg_2.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(select(32232u, u_input.b, false), abs(4294967295u), u_input.b), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 4294967295u, 50703u))), vec3<u32>(max(u_input.b, u_input.b), 33690u, ~u_input.b) | func_6(max(vec3<i32>(-8871i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, -1i, 0i)), true, global0[_wgslsmith_index_u32(func_1(Struct_2(Struct_1(vec3<f32>(262f, -1629f, 668f), false, true), global0[_wgslsmith_index_u32(u_input.b, 27u)], global0[_wgslsmith_index_u32(u_input.b, 27u)]), 0u, 1285f), 27u)])), 9648u, 81478u), 27u)];
    let var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-512f, var_0.a.x)) * -974f)), false, true), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2119f, var_0.a.x, 1000f)))), var_0.b, false), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2018f, var_0.a.x, 154f)), _wgslsmith_f_op_vec3_f32(-var_0.a))), !var_0.b, false));
    var var_2 = func_5(Struct_2(func_2(), func_2(), global0[_wgslsmith_index_u32(4294967295u, 27u)]), func_5(func_5(func_5(var_1, func_5(Struct_2(Struct_1(var_1.c.a, var_0.c, var_0.b), global0[_wgslsmith_index_u32(22223u, 27u)], Struct_1(vec3<f32>(var_1.b.a.x, var_0.a.x, var_0.a.x), true, false)), var_1, var_0.a.xx), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1458f, 1000f)))), func_5(func_5(Struct_2(var_1.c, global0[_wgslsmith_index_u32(u_input.b, 27u)], Struct_1(var_0.a, var_0.c, var_1.c.c)), var_1, var_1.a.a.yz), var_1, var_1.b.a.yx), vec2<f32>(_wgslsmith_f_op_f32(-1019f + var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x))), var_1, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.a.xz), var_0.a.zy)), _wgslsmith_f_op_vec2_f32(-var_0.a.xz));
    var var_3 = Struct_2(func_5(func_5(var_1, var_1, vec2<f32>(func_2().a.x, -1067f)), var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a.x, -1279f) * vec2<f32>(var_1.c.a.x, var_2.b.a.x))))).c, var_2.a, func_5(Struct_2(func_2(), func_2(), Struct_1(var_1.c.a, var_2.c.b, var_0.c || true)), var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.yx)))).a);
    var_3 = var_1;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(func_5(Struct_2(Struct_1(var_3.a.a, false, false), func_2(), global0[_wgslsmith_index_u32(~32913u, 27u)]), func_5(Struct_2(Struct_1(vec3<f32>(var_0.a.x, -454f, 1000f), false, true), Struct_1(var_1.b.a, var_2.a.c, true), global0[_wgslsmith_index_u32(0u, 27u)]), Struct_2(Struct_1(vec3<f32>(266f, 122f, var_1.b.a.x), var_1.c.c, false), Struct_1(vec3<f32>(2112f, var_0.a.x, -752f), var_1.a.b, false), Struct_1(var_1.b.a, var_1.a.c, false)), var_2.a.a.xx), var_1.c.a.yx).c.a.zy, vec2<f32>(1f, func_2().a.x)));
    var var_5 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(u_input.a.x), ~u_input.a.x), ~vec2<i32>(-2147483647i, u_input.a.x)) << ((~u_input.b ^ _wgslsmith_clamp_u32(u_input.b ^ 51729u, u_input.b & 1691u, u_input.b)) % 32u), min(~((i32(-1i) * -7954i) >> (~u_input.b % 32u)), i32(-1i) * -(~u_input.a.x)), i32(-1i) * -1311i);
    var var_6 = !(!select(!select(vec2<bool>(var_2.c.c, var_2.a.c), vec2<bool>(false, true), var_0.b), select(select(vec2<bool>(var_3.c.b, false), vec2<bool>(true, var_2.a.c), false), vec2<bool>(var_0.b, true), true), var_1.a.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(1i, ~(~u_input.a.x) | ~u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.a.a.x))))), -462f, 753f, _wgslsmith_div_f32(func_5(func_5(Struct_2(Struct_1(vec3<f32>(-1180f, var_3.b.a.x, var_0.a.x), var_1.c.b, var_3.c.c), var_3.c, var_3.c), var_1, vec2<f32>(428f, var_2.a.a.x)), Struct_2(var_2.c, Struct_1(vec3<f32>(-1049f, 1000f, var_4.x), var_2.a.b, true), Struct_1(vec3<f32>(var_0.a.x, var_2.a.a.x, var_4.x), var_0.b, var_1.c.c)), vec2<f32>(368f, 627f)).b.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-331f, 1155f)))), -1i, 2147483647i);
}

