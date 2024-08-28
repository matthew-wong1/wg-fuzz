struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<bool>,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(1u, true, vec4<bool>(false, false, true, true), vec3<bool>(true, false, false), 1u), Struct_1(4294967295u, false, vec4<bool>(true, true, true, false), vec3<bool>(false, true, false), 4294967295u), Struct_1(0u, true, vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), 0u), Struct_1(1u, false, vec4<bool>(false, true, true, false), vec3<bool>(true, false, false), 8828u), Struct_1(34828u, false, vec4<bool>(false, true, false, true), vec3<bool>(true, true, false), 6455u), Struct_1(4294967295u, false, vec4<bool>(true, false, true, true), vec3<bool>(true, true, true), 1u), Struct_1(4294967295u, true, vec4<bool>(false, true, true, false), vec3<bool>(false, true, true), 46905u), Struct_1(4294967295u, false, vec4<bool>(false, true, false, true), vec3<bool>(false, false, true), 4291u), Struct_1(4294967295u, false, vec4<bool>(true, true, true, true), vec3<bool>(false, false, false), 3710u), Struct_1(15213u, true, vec4<bool>(false, false, true, false), vec3<bool>(false, true, true), 0u), Struct_1(13664u, true, vec4<bool>(false, true, false, false), vec3<bool>(false, true, true), 4294967295u), Struct_1(4294967295u, false, vec4<bool>(false, true, true, true), vec3<bool>(false, true, false), 1u), Struct_1(0u, false, vec4<bool>(true, false, false, false), vec3<bool>(true, true, true), 4294967295u), Struct_1(11981u, true, vec4<bool>(false, false, false, false), vec3<bool>(true, true, false), 4294967295u), Struct_1(13002u, false, vec4<bool>(false, true, true, false), vec3<bool>(true, true, true), 18704u), Struct_1(27743u, true, vec4<bool>(false, false, true, true), vec3<bool>(true, false, false), 65842u), Struct_1(1u, true, vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), 4294967295u), Struct_1(73325u, false, vec4<bool>(true, false, true, true), vec3<bool>(false, true, true), 4158u), Struct_1(4294967295u, false, vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), 42052u), Struct_1(4294967295u, false, vec4<bool>(true, true, true, false), vec3<bool>(false, false, true), 48641u), Struct_1(4294967295u, false, vec4<bool>(false, false, false, true), vec3<bool>(false, false, true), 0u), Struct_1(0u, false, vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), 26139u), Struct_1(6099u, false, vec4<bool>(false, true, false, false), vec3<bool>(true, true, false), 1u), Struct_1(42567u, true, vec4<bool>(false, true, false, true), vec3<bool>(true, false, true), 0u), Struct_1(30845u, false, vec4<bool>(false, true, true, false), vec3<bool>(true, false, false), 12996u), Struct_1(4294967295u, true, vec4<bool>(false, false, true, true), vec3<bool>(false, true, true), 0u), Struct_1(1u, false, vec4<bool>(false, true, true, true), vec3<bool>(true, false, true), 91931u), Struct_1(106415u, false, vec4<bool>(false, false, true, true), vec3<bool>(true, true, false), 0u), Struct_1(8069u, true, vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), 17464u));

var<private> global1: array<vec3<bool>, 11>;

var<private> global2: u32;

var<private> global3: array<f32, 16>;

var<private> global4: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    global1 = array<vec3<bool>, 11>();
    var var_0 = Struct_1(arg_0.e, any(!select(arg_0.d.xy, arg_0.d.zz, arg_0.d.x)), arg_0.c, select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(arg_0.e), _wgslsmith_div_u32(arg_0.a, arg_0.e)), reverseBits(~vec2<u32>(arg_0.e, arg_0.e))), 11u)], !arg_0.c.wxz, vec3<bool>(arg_0.b, true, all(arg_0.c))), select(arg_0.e, arg_0.a, !arg_0.d.x || any(vec2<bool>(arg_0.c.x, false))));
    var var_1 = !any(!(!vec4<bool>(true, false, arg_0.b, arg_0.d.x)));
    global1 = array<vec3<bool>, 11>();
    global1 = array<vec3<bool>, 11>();
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<f32> {
    global0 = array<Struct_1, 29>();
    let var_0 = _wgslsmith_sub_i32(-1i << (select(arg_2.x, arg_3.a ^ _wgslsmith_sub_u32(1u, 1u), func_3(Struct_1(0u, arg_1.d.x, vec4<bool>(arg_1.d.x, arg_3.c.x, false, false), global1[_wgslsmith_index_u32(arg_3.e, 11u)], 9799u), 0i)) % 32u), _wgslsmith_dot_vec2_i32(max(_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(u_input.a.x, u_input.b.x)), ~vec2<i32>(38103i, u_input.a.x)), max(_wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)), max(vec2<i32>(u_input.a.x, 2147483647i), u_input.b))) | -1i);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1379f)), global3[_wgslsmith_index_u32(countOneBits(4294967295u), 16u)])), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(max(~arg_0.a, ~reverseBits(arg_1.e)), 16u)] * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 16u)])), global3[_wgslsmith_index_u32(abs(reverseBits(countOneBits(~0u))), 16u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-185f + global3[_wgslsmith_index_u32(arg_3.e, 16u)]), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_1.e, arg_2.x), 16u)])))))));
    var var_2 = arg_0;
    var var_3 = ~arg_3.e;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3[_wgslsmith_index_u32(min(14865u >> (arg_0.e % 32u), reverseBits(4294967295u)), 16u)], global3[_wgslsmith_index_u32(~(var_2.e >> (arg_3.a % 32u)), 16u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1410f)))), vec3<f32>(-439f, _wgslsmith_f_op_f32(sign(327f)), _wgslsmith_div_f32(-882f, _wgslsmith_f_op_f32(f32(-1f) * -893f))))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(133f * -192f)) * _wgslsmith_f_op_f32(floor(994f))), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(89272u, 16u)]), global3[_wgslsmith_index_u32(~1u, 16u)]));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(firstTrailingBit(0u), abs(_wgslsmith_sub_u32(1u, 1u)) << (~_wgslsmith_dot_vec4_u32(vec4<u32>(59670u, 11260u, 97467u, 0u), vec4<u32>(4294967295u, 67754u, 43552u, 55016u)) % 32u))), 29u)];
    let var_1 = var_0.c;
    global0 = array<Struct_1, 29>();
    global0 = array<Struct_1, 29>();
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(481f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(var_0.a, 16u)], global3[_wgslsmith_index_u32(var_0.a, 16u)])), -798f), -697f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_0.a, 16u)], global3[_wgslsmith_index_u32(0u, 16u)], 804f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(var_0.e, true, var_0.c, vec3<bool>(true, true, arg_0), 1u), Struct_1(var_0.e, var_1.x, var_0.c, vec3<bool>(var_0.b, true, true), var_0.a), vec3<u32>(var_0.a, 1u, var_0.a), global0[_wgslsmith_index_u32(0u, 29u)]))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(38708u, 16u)], 685f, -467f)))) + vec3<f32>(371f, _wgslsmith_f_op_f32(-1425f + -1396f), _wgslsmith_div_f32(-1242f, global3[_wgslsmith_index_u32(24283u, 16u)]))))));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.a.xx, firstLeadingBit(u_input.a.xw >> (vec2<u32>(36278u, 4294967295u) % vec2<u32>(32u)))), countOneBits(u_input.b.x)) ^ func_1(true);
    var var_1 = select(vec4<bool>(true, false || any(vec2<bool>(false, true)), !(0i > abs(u_input.b.x)), !any(vec4<bool>(true, false, true, false))), select(select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false)), true), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), false), select(false, true, -503f >= global3[_wgslsmith_index_u32(1u, 16u)])), !select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, false, true), true)), !select(vec4<bool>(all(vec2<bool>(false, false)), true, true, func_3(Struct_1(0u, true, vec4<bool>(false, false, true, true), global1[_wgslsmith_index_u32(1u, 11u)], 4294967295u), u_input.b.x)), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 16u)] < 603f, false, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), false))));
    var var_2 = firstTrailingBit(vec2<u32>((_wgslsmith_dot_vec3_u32(vec3<u32>(18584u, 25113u, 28334u), vec3<u32>(11069u, 4294967295u, 58608u)) ^ 49981u) ^ ~1u, 4294967295u));
    global0 = array<Struct_1, 29>();
    let var_3 = -vec2<i32>(_wgslsmith_mult_i32(min(1i, select(u_input.b.x, -41355i, var_1.x)), ~(-u_input.b.x)), 1i);
    global2 = var_2.x;
    let var_4 = global0[_wgslsmith_index_u32(62094u, 29u)];
    global0 = array<Struct_1, 29>();
    var_2 = abs(vec2<u32>(var_2.x, _wgslsmith_add_u32(~var_4.e, 55063u) & ~var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(0u, 16u)], 1u);
}

