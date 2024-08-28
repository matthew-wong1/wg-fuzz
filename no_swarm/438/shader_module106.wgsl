struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19> = array<vec2<i32>, 19>(vec2<i32>(-21492i, 40413i), vec2<i32>(-3660i, -9116i), vec2<i32>(0i, -44272i), vec2<i32>(-18623i, 0i), vec2<i32>(1i, -1i), vec2<i32>(43012i, 1668i), vec2<i32>(43687i, 9278i), vec2<i32>(-7427i, 2147483647i), vec2<i32>(11710i, -1i), vec2<i32>(52711i, -19779i), vec2<i32>(12579i, 2147483647i), vec2<i32>(1i, -18181i), vec2<i32>(4320i, 0i), vec2<i32>(-32748i, -1i), vec2<i32>(-32203i, -58443i), vec2<i32>(-40172i, 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(80164i, 1i), vec2<i32>(-1i, i32(-2147483648)));

var<private> global1: u32 = 51934u;

var<private> global2: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(108284u, 0u, 6921u, 9587u), vec4<u32>(51894u, 1u, 1u, 0u), vec4<u32>(4294967295u, 22758u, 45801u, 1u), vec4<u32>(1u, 3552u, 0u, 4294967295u), vec4<u32>(72624u, 0u, 14297u, 26748u), vec4<u32>(0u, 35621u, 24900u, 2968u), vec4<u32>(1u, 88537u, 4294967295u, 38011u), vec4<u32>(20558u, 46293u, 17244u, 36551u), vec4<u32>(4294967295u, 24104u, 1u, 57525u), vec4<u32>(55114u, 29841u, 0u, 60701u), vec4<u32>(3389u, 17177u, 0u, 16309u), vec4<u32>(59066u, 52254u, 0u, 25414u), vec4<u32>(4294967295u, 15075u, 59905u, 0u), vec4<u32>(25481u, 0u, 12564u, 1u), vec4<u32>(1u, 1u, 12455u, 1u), vec4<u32>(1u, 7929u, 1411u, 4294967295u), vec4<u32>(90397u, 1u, 0u, 2924u), vec4<u32>(1u, 4294967295u, 25903u, 83179u), vec4<u32>(4294967295u, 1u, 79928u, 0u), vec4<u32>(36274u, 0u, 34768u, 15523u), vec4<u32>(293u, 21254u, 29657u, 1u), vec4<u32>(0u, 1u, 66306u, 20458u), vec4<u32>(72989u, 446u, 26994u, 1u), vec4<u32>(1u, 1u, 4294967295u, 81294u), vec4<u32>(13479u, 31889u, 4294967295u, 71702u), vec4<u32>(4294967295u, 52382u, 0u, 4294967295u));

var<private> global3: vec4<bool>;

var<private> global4: i32 = 1i;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<i32>, arg_3: f32) -> f32 {
    let var_0 = Struct_1(abs(-(u_input.b.x & 1i)));
    global2 = array<vec4<u32>, 26>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-111f, arg_3)))) + arg_3)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
    var var_1 = Struct_1(-1i);
    let var_2 = arg_2;
    global2 = array<vec4<u32>, 26>();
    let var_3 = 1i;
    return arg_2;
}

fn func_1() -> Struct_1 {
    let var_0 = true;
    global0 = array<vec2<i32>, 19>();
    var var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-max(vec2<i32>(2147483647i, -41757i), vec2<i32>(u_input.b.x, 2147483647i)), abs(global0[_wgslsmith_index_u32(~109310u, 19u)])), u_input.a));
    let var_2 = !global3.yz;
    global1 = 48684u;
    return func_3(1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -924f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, u_input.a, -2147483647i, var_1.a), u_input.b), abs(4294967295u), vec3<i32>(-1i, 14352i, u_input.a), -1212f)) * -488f)), Struct_1(-(~8797i ^ -u_input.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = !(!select(vec4<bool>(any(vec4<bool>(true, global3.x, global3.x, global3.x)), false, true, !global3.x), vec4<bool>(global3.x, -1i < u_input.b.x, true, true), select(!vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, true, true), global3.x || global3.x)));
    var var_1 = 68391u;
    let var_2 = Struct_1(reverseBits(-(~min(-2147483647i, 15578i))));
    global0 = array<vec2<i32>, 19>();
    global0 = array<vec2<i32>, 19>();
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> vec3<u32> {
    global3 = select(!vec4<bool>(true, true, all(select(vec2<bool>(global3.x, false), vec2<bool>(true, true), vec2<bool>(global3.x, true))), any(select(vec4<bool>(true, true, global3.x, true), vec4<bool>(false, global3.x, global3.x, global3.x), vec4<bool>(true, false, false, global3.x)))), !select(vec4<bool>(global3.x, true, false, false && global3.x), vec4<bool>(true, false, global3.x, global3.x), !select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(false, global3.x, global3.x, false))), select(select(!vec4<bool>(global3.x, true, true, global3.x), !(!vec4<bool>(global3.x, global3.x, global3.x, global3.x)), !select(vec4<bool>(false, true, global3.x, global3.x), vec4<bool>(global3.x, true, global3.x, false), vec4<bool>(global3.x, true, true, true))), vec4<bool>(_wgslsmith_f_op_f32(1460f - 495f) >= _wgslsmith_f_op_f32(trunc(arg_1)), global3.x, false, all(global3.yy)), all(vec3<bool>(!global3.x, !global3.x, false))));
    let var_0 = vec4<f32>(arg_1, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - arg_1)) + 661f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1);
    var var_1 = Struct_1(_wgslsmith_clamp_i32(~(~(~u_input.b.x)), ~(-min(u_input.c.x, 0i)), 0i));
    return abs(reverseBits(abs(vec3<u32>(1u, 1u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (firstTrailingBit(abs(~vec3<u32>(27699u, 35141u, 1u))) | vec3<u32>(1u, ~_wgslsmith_clamp_u32(27265u, 1u, 50467u), 54873u)) & (func_5(func_4(func_1(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(313f, -1996f))), _wgslsmith_div_f32(1046f, _wgslsmith_f_op_f32(func_2(u_input.b, 350u, u_input.b.yyw, -1491f))), 98487u) << (firstLeadingBit(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)));
    var var_1 = func_4(Struct_1(abs(u_input.b.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1211f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-543f, 469f), vec2<f32>(385f, 465f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-170f, -1556f) + vec2<f32>(-803f, 1118f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -2342f) - vec2<f32>(309f, -391f))))))));
    let var_2 = Struct_1(1i);
    let var_3 = func_3(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1264f) - _wgslsmith_f_op_f32(trunc(1f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-240f)), -796f))), var_2);
    let var_4 = func_4(func_1(), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1938f, _wgslsmith_f_op_f32(888f + -464f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -371f), -692f), global3.xw)))));
    global0 = array<vec2<i32>, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(max(-select(57848i, var_2.a, true) << (var_0.x % 32u), u_input.a), vec4<i32>(-1i, -func_1().a, var_4.a, ~var_1.a), vec2<u32>((~var_0.x ^ 4294967295u) & 1u, var_0.x), ~countOneBits(vec4<u32>(max(var_0.x, 4294967295u), select(4294967295u, 0u, true), var_0.x << (4294967295u % 32u), ~57760u)));
}

