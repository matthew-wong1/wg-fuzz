struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1 = Struct_1(false, vec3<bool>(false, false, false), vec2<u32>(4294967295u, 13073u));

var<private> global2: array<Struct_1, 5>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = Struct_1(any(global1.b.zz), global1.b, vec2<u32>(~(~u_input.b.x << (10675u % 32u)), ~u_input.b.x));
    global2 = array<Struct_1, 5>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~1u << (global1.c.x % 32u)), 24147u | _wgslsmith_dot_vec2_u32(u_input.b.xx, (u_input.b.yy >> (u_input.b.xz % vec2<u32>(32u))) ^ u_input.b.yz)), 5u)];
    global2 = array<Struct_1, 5>();
    global0 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1060f - _wgslsmith_f_op_f32(-756f + _wgslsmith_f_op_f32(935f + -169f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-742f - 558f), -333f));
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_1(false, global1.b, firstTrailingBit(~vec2<u32>(u_input.b.x, abs(u_input.b.x))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1122f)))))) * -1451f);
    var var_2 = ~u_input.b;
    let var_3 = -_wgslsmith_mod_i32(-1i, u_input.a);
    var_1 = -1000f;
    return ~abs(reverseBits(vec2<u32>(abs(80048u), _wgslsmith_add_u32(1u, 65732u))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(!arg_0.a, arg_0.b, u_input.b.yx);
    global0 = true;
    global1 = Struct_1(true, global1.b, arg_0.c >> (global1.c % vec2<u32>(32u)));
    let var_1 = Struct_1((abs(arg_0.c.x >> (5910u % 32u)) != ~(~4294967295u)) & false, arg_0.b, ~_wgslsmith_mult_vec2_u32(arg_0.c, arg_0.c));
    var var_2 = !all(!select(!vec2<bool>(false, var_1.a), select(vec2<bool>(global1.b.x, false), var_1.b.yx, true), select(vec2<bool>(var_1.a, false), var_0.b.yz, vec2<bool>(true, false))));
    return Struct_1(~1u != var_1.c.x, select(vec3<bool>(var_0.b.x, true, !(true || var_0.b.x)), var_0.b, select(vec3<bool>(global1.b.x & global1.b.x, !var_1.b.x, arg_0.a), select(vec3<bool>(false, false, true), global1.b, global1.b), true)), arg_0.c);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(arg_2.x - -1482f), 643f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2.x, arg_2.x, 707f), arg_2.xxw, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1272f, -191f, -1113f))), func_4(Struct_1(true, vec3<bool>(arg_1.a, global1.a, global1.a), arg_3.c)).b)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(arg_2.wwx, vec3<f32>(1812f, arg_2.x, 1529f)))))), !func_4(func_4(Struct_1(arg_3.b.x, global1.b, vec2<u32>(arg_3.c.x, arg_1.c.x)))).b.x)));
    global1 = Struct_1(true, arg_3.b, (~_wgslsmith_div_vec2_u32(vec2<u32>(58736u, 13669u), arg_0.xz) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(73496u, global1.c.x), global1.c) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(25730u, 0u)), global1.c ^ ~vec2<u32>(17422u, 4294967295u)) % vec2<u32>(32u)));
    let var_1 = func_4(arg_3);
    global1 = arg_1;
    var var_2 = -2147483647i;
    return var_1;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec2<i32>) -> bool {
    let var_0 = func_5(_wgslsmith_div_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 69185u, global1.c.x, u_input.b.x), select(vec4<u32>(arg_1.c.x, 23604u, arg_1.c.x, u_input.b.x), vec4<u32>(0u, u_input.b.x, 4294967295u, 62088u), vec4<bool>(false, true, false, true))), ~(~(~vec4<u32>(u_input.b.x, arg_1.c.x, u_input.b.x, 32067u)))), func_4(Struct_1(true, vec3<bool>(true, true, !arg_1.a), _wgslsmith_div_vec2_u32(max(vec2<u32>(arg_1.c.x, 4294967295u), arg_1.c), func_2()))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-668f, -535f, 785f, -688f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, -157f, 285f, -758f)), true)), vec4<f32>(320f, -1479f, _wgslsmith_f_op_f32(-1000f - -513f), _wgslsmith_f_op_f32(f32(-1f) * -102f)), true)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1964f)), _wgslsmith_f_op_f32(924f * 639f), _wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(-338f - -994f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1690f, -773f, -276f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2125f, -243f, -270f, -665f)))))), Struct_1(all(!global1.b), vec3<bool>(true, global1.b.x, false), arg_1.c));
    global0 = any(!(!global1.b.yy));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = false | all(!vec2<bool>(global1.c.x == u_input.b.x, func_1(-1i, Struct_1(false, global1.b, vec2<u32>(22479u, u_input.b.x)), vec2<i32>(u_input.a, 732i))));
    global0 = select(all(vec4<bool>(global1.b.x, false, true, global1.a)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-541f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(681f)), 1410f)) < _wgslsmith_f_op_f32(f32(-1f) * -1144f));
    var var_0 = 3650i;
    global1 = Struct_1(any(func_4(global2[_wgslsmith_index_u32(~4743u, 5u)]).b), !(!func_4(func_5(vec4<u32>(global1.c.x, u_input.b.x, 15798u, 66495u), Struct_1(global1.a, vec3<bool>(global1.b.x, false, global1.a), u_input.b.xy), vec4<f32>(-1000f, -1000f, 1000f, 717f), Struct_1(global1.b.x, global1.b, global1.c))).b), ~global1.c ^ firstTrailingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(global1.c, vec2<u32>(u_input.b.x, 4294967295u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b.x), global1.c))));
    global1 = Struct_1(global1.a, vec3<bool>(any(vec2<bool>(any(vec4<bool>(false, global1.a, true, true)), any(global1.b.xz))), all(select(global1.b, func_5(vec4<u32>(1u, 4294967295u, 0u, u_input.b.x), global2[_wgslsmith_index_u32(4294967295u, 5u)], vec4<f32>(936f, -651f, -473f, 346f), Struct_1(false, global1.b, u_input.b.xy)).b, all(vec4<bool>(global1.b.x, false, false, true)))), true), ~(~global1.c));
    var var_1 = func_4(Struct_1(false, global1.b, _wgslsmith_sub_vec2_u32(global1.c, u_input.b.zx)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, var_1.c.x, 1u, var_1.c.x)), vec4<u32>(52410u, 14548u, var_1.c.x, u_input.b.x) << (_wgslsmith_div_vec4_u32(vec4<u32>(44264u, 56154u, var_1.c.x, u_input.b.x), vec4<u32>(1u, 0u, var_1.c.x, 0u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -230f), -711f, _wgslsmith_f_op_f32(abs(427f))))) + vec3<f32>(1f, 1f, 1f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(308f, -476f, -840f)))))), vec4<f32>(1f, 1f, 1f, 1f), u_input.a);
}

