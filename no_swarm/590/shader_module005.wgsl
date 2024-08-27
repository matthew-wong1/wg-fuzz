struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: i32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-32341i, true, i32(-2147483648), 1340f, Struct_1(0i, vec3<f32>(1866f, -405f, 673f)));

var<private> global1: f32 = 1242f;

var<private> global2: array<i32, 18>;

var<private> global3: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(-1i, false, -36192i, -1026f, Struct_1(0i, vec3<f32>(1142f, 1232f, -830f))), Struct_2(i32(-2147483648), true, 1i, -149f, Struct_1(-5775i, vec3<f32>(-507f, -505f, -375f))), Struct_2(30432i, false, 1i, 2237f, Struct_1(-15513i, vec3<f32>(625f, 531f, 1000f))), Struct_2(295i, false, i32(-2147483648), -1326f, Struct_1(86777i, vec3<f32>(-727f, -419f, -561f))), Struct_2(i32(-2147483648), false, -1i, -1618f, Struct_1(i32(-2147483648), vec3<f32>(1000f, 549f, -388f))), Struct_2(-34759i, false, -1i, 571f, Struct_1(-64595i, vec3<f32>(-1058f, 485f, 629f))), Struct_2(41482i, true, 2147483647i, 430f, Struct_1(2147483647i, vec3<f32>(243f, 502f, -1146f))), Struct_2(55616i, false, i32(-2147483648), -158f, Struct_1(7744i, vec3<f32>(787f, 1575f, -1293f))), Struct_2(1i, false, -13689i, 1245f, Struct_1(21315i, vec3<f32>(-864f, -730f, -689f))), Struct_2(-33069i, true, -8418i, -281f, Struct_1(2147483647i, vec3<f32>(-1000f, 450f, 809f))), Struct_2(-1i, false, -11769i, 185f, Struct_1(-11763i, vec3<f32>(-651f, -926f, -288f))), Struct_2(11489i, true, -8289i, 633f, Struct_1(0i, vec3<f32>(1892f, -320f, 344f))), Struct_2(2147483647i, true, 1i, -100f, Struct_1(0i, vec3<f32>(552f, -827f, 1084f))), Struct_2(2147483647i, true, 16673i, -1530f, Struct_1(-28392i, vec3<f32>(955f, -368f, -741f))), Struct_2(1i, true, i32(-2147483648), 2192f, Struct_1(i32(-2147483648), vec3<f32>(389f, -626f, -469f))), Struct_2(-38733i, true, -1i, 1683f, Struct_1(1i, vec3<f32>(561f, -1162f, 860f))), Struct_2(-9572i, true, 31578i, 2056f, Struct_1(-22848i, vec3<f32>(796f, -205f, -316f))), Struct_2(-34070i, true, 67693i, -989f, Struct_1(-143779i, vec3<f32>(214f, 468f, -1599f))), Struct_2(-23541i, true, 29588i, -209f, Struct_1(i32(-2147483648), vec3<f32>(366f, 1298f, -635f))), Struct_2(1i, true, i32(-2147483648), 335f, Struct_1(-9292i, vec3<f32>(429f, 291f, -656f))));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    let var_0 = true;
    let var_1 = global0.e;
    var var_2 = arg_2;
    global3 = array<Struct_2, 20>();
    global0 = arg_2;
    return arg_0.x ^ u_input.b.x;
}

fn func_3() -> f32 {
    var var_0 = global0.e;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.b.x + _wgslsmith_f_op_f32(f32(-1f) * -275f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -279f)))))));
    var var_1 = firstLeadingBit(-(~(-2147483647i)));
    var var_2 = Struct_1(27714i, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global0.e.b + vec3<f32>(1000f, _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(round(global0.e.b.x)))))));
    let var_3 = true;
    return global0.d;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32) -> vec3<f32> {
    var var_0 = global0.b;
    global2 = array<i32, 18>();
    global1 = global0.d;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * global0.d);
    global1 = 1000f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1365f, global0.d, -455f))), vec3<f32>(_wgslsmith_f_op_f32(-956f * global0.e.b.x), -839f, global0.e.b.x))) + global0.e.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 18>();
    global0 = Struct_2(-abs(-1708i), any(vec3<bool>(!global0.b | (global0.d < global0.d), select(global0.b, global0.b, global0.b), true)), 2147483647i, -265f, Struct_1(1i, _wgslsmith_f_op_vec3_f32(func_2(u_input.b, global2[_wgslsmith_index_u32(func_1(max(vec2<u32>(4294967295u, 19940u), vec2<u32>(u_input.b.x, 41104u)), _wgslsmith_f_op_f32(sign(global0.e.b.x)), Struct_2(-2147483647i, global0.b, u_input.a, global0.e.b.x, Struct_1(global0.e.a, global0.e.b)), abs(vec3<u32>(2089u, 4294967295u, u_input.b.x))), 18u)]))));
    var var_0 = vec4<bool>((_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(6564u, 103888u, 2414u, 12130u)) ^ _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x), 87183u ^ u_input.b.x)) > ~(~(~u_input.b.x)), 66767u <= abs(func_1(vec2<u32>(u_input.b.x, u_input.b.x), global0.e.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 20u)], u_input.b.yzy)), !global0.b, (_wgslsmith_f_op_f32(-global0.d) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-388f - 1004f) + 1000f)) && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1051f))) >= global0.d));
    var var_1 = Struct_1(14100i, vec3<f32>(global0.d, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.b.x)))));
    var_1 = Struct_1(var_1.a, global0.e.b);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(max(~select(vec4<i32>(-5243i, u_input.a, -53557i, var_1.a), vec4<i32>(1i, 46330i, var_1.a, global0.c), vec4<bool>(var_0.x, global0.b, true, true)), -select(vec4<i32>(u_input.a, -17974i, -1i, u_input.a), vec4<i32>(global2[_wgslsmith_index_u32(3065u, 18u)], var_1.a, 5155i, -23178i), vec4<bool>(var_0.x, true, var_0.x, false)))), _wgslsmith_clamp_vec3_i32(vec3<i32>((3421i << (u_input.b.x % 32u)) | 0i, 0i, 0i), countOneBits(_wgslsmith_div_vec3_i32(-vec3<i32>(var_1.a, u_input.a, u_input.a), vec3<i32>(var_1.a, var_1.a, -1i))), select(vec3<i32>(global2[_wgslsmith_index_u32(9331u, 18u)], global2[_wgslsmith_index_u32(u_input.b.x, 18u)], -1i) >> (vec3<u32>(0u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], -65589i, -1i), vec3<i32>(var_1.a, 2147483647i, -2147483647i)), var_0.x) << (firstTrailingBit(vec3<u32>(34983u, u_input.b.x, u_input.b.x)) % vec3<u32>(32u))));
}

