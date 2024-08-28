struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 25>;

var<private> global1: vec2<i32>;

var<private> global2: Struct_3;

var<private> global3: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(Struct_1(vec2<bool>(false, false), false, 42015u), vec3<f32>(-290f, -130f, 1288f), Struct_1(vec2<bool>(false, true), false, 39253u), vec2<f32>(-406f, -2928f)), Struct_2(Struct_1(vec2<bool>(true, false), true, 0u), vec3<f32>(-330f, 496f, -1719f), Struct_1(vec2<bool>(false, false), false, 1u), vec2<f32>(376f, -513f)), Struct_2(Struct_1(vec2<bool>(false, false), false, 23522u), vec3<f32>(-244f, 1156f, 529f), Struct_1(vec2<bool>(false, true), true, 31692u), vec2<f32>(1252f, 1071f)), Struct_2(Struct_1(vec2<bool>(true, false), true, 4502u), vec3<f32>(-1360f, -122f, -162f), Struct_1(vec2<bool>(true, false), false, 16393u), vec2<f32>(585f, -255f)), Struct_2(Struct_1(vec2<bool>(false, false), false, 19786u), vec3<f32>(857f, -241f, -2049f), Struct_1(vec2<bool>(false, true), false, 0u), vec2<f32>(694f, -862f)), Struct_2(Struct_1(vec2<bool>(false, false), false, 50841u), vec3<f32>(399f, -1147f, 204f), Struct_1(vec2<bool>(false, true), false, 18978u), vec2<f32>(412f, -976f)), Struct_2(Struct_1(vec2<bool>(false, false), true, 43581u), vec3<f32>(-1126f, 586f, -1639f), Struct_1(vec2<bool>(true, false), false, 4294967295u), vec2<f32>(-356f, 689f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    global0 = array<Struct_2, 25>();
    global3 = array<Struct_2, 7>();
    global0 = array<Struct_2, 25>();
    var var_0 = global3[_wgslsmith_index_u32(1u, 7u)];
    global2 = Struct_3(global2.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(506f, arg_1, global2.b.x)))))), !global2.c, Struct_2(Struct_1(select(global2.d.a.a, arg_2.a, true), !(!global2.a.a.b), ~max(4294967295u, var_0.c.c)), global2.a.b, Struct_1(select(global2.a.c.a, select(arg_2.a, vec2<bool>(true, var_0.c.b), false), vec2<bool>(global2.d.c.b, global2.a.c.a.x)), select(true, var_0.c.a.x == false, true), u_input.d), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1638f + arg_1), arg_1))));
    return ~(~(_wgslsmith_add_vec3_i32(arg_0 >> (vec3<u32>(global2.a.a.c, arg_2.c, 0u) % vec3<u32>(32u)), ~arg_0) << (u_input.b % vec3<u32>(32u))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: u32) -> bool {
    global0 = array<Struct_2, 25>();
    global2 = arg_1;
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.a.d.x))) - _wgslsmith_f_op_f32(round(-116f))));
    var var_1 = global3[_wgslsmith_index_u32(15389u, 7u)];
    var var_2 = arg_0;
    return true;
}

fn func_1(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = Struct_1(global2.c.wz, global2.d.a.a.x, global2.a.c.c);
    let var_1 = global2.a.c;
    global3 = array<Struct_2, 7>();
    var var_2 = u_input.c;
    var var_3 = vec3<bool>(global2.d.a.a.x, func_3(func_2(vec3<i32>(u_input.c, global1.x, -32197i) ^ vec3<i32>(u_input.c, 26003i, 0i), _wgslsmith_f_op_f32(852f * -187f), Struct_1(global2.a.a.a, false, 29918u)) ^ vec3<i32>(~global1.x, u_input.c, firstTrailingBit(0i)), Struct_3(Struct_2(Struct_1(var_1.a, false, arg_0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-851f, global2.b.x, global2.a.d.x)), Struct_1(vec2<bool>(true, false), true, global2.d.c.c), global2.a.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.b)), global2.c, global2.a), 1u), global2.a.c.a.x);
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-139f - 346f) + _wgslsmith_f_op_f32(404f - 294f)), global2.d.d.x, 1605f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global2.d.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a.d.x, global2.d.b.x, -372f) * vec3<f32>(-805f, 1229f, global2.a.b.x)))), global2.d.b))), vec3<f32>(429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global2.a.d.x, -183f)))) - global2.d.b.x), -146f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    global2 = Struct_3(global3[_wgslsmith_index_u32(28606u, 7u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(firstTrailingBit(vec2<u32>(4294967295u, 1u) >> (u_input.b.zz % vec2<u32>(32u))))) * vec3<f32>(-267f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b.x)) - global2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1453f)))), vec4<bool>(any(!global2.c), true, true, global2.a.a.a.x), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(5196u, u_input.a) & vec2<u32>(0u, u_input.d), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, 26255u), vec2<u32>(u_input.a, u_input.a))), ~firstLeadingBit(vec2<u32>(global2.a.c.c, u_input.d))), _wgslsmith_sub_u32(max(global2.a.c.c, ~u_input.b.x), ~u_input.a)), 7u)]);
    global1 = min(-(firstTrailingBit(vec2<i32>(0i, 0i)) & firstTrailingBit(vec2<i32>(-1i, global1.x))) >> (firstLeadingBit(~firstLeadingBit(u_input.b.yz)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(min(max(countOneBits(vec2<i32>(u_input.c, -2147483647i)), vec2<i32>(-2147483647i, global1.x) | vec2<i32>(2147483647i, 1i)), func_2(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0, global1.x, var_0), vec3<i32>(u_input.c, var_0, -1i), vec3<i32>(21213i, 0i, var_0)), _wgslsmith_f_op_f32(global2.d.b.x - global2.b.x), Struct_1(vec2<bool>(global2.a.c.a.x, global2.c.x), false, u_input.b.x)).xx), func_2(min(vec3<i32>(u_input.c, u_input.c, var_0), vec3<i32>(0i, 0i, global1.x)) << (vec3<u32>(0u, 57093u, u_input.a) % vec3<u32>(32u)), _wgslsmith_f_op_f32(global2.d.b.x - -871f), Struct_1(vec2<bool>(false, global2.d.c.a.x), var_0 > var_0, firstLeadingBit(global2.a.a.c))).zz));
    let var_1 = global2.c;
    let var_2 = global2.c.yzy;
    var var_3 = Struct_3(Struct_2(global2.d.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global2.a.d.x + -1103f), _wgslsmith_f_op_f32(min(global2.b.x, global2.a.d.x)), _wgslsmith_f_op_f32(ceil(global2.b.x))) + vec3<f32>(160f, _wgslsmith_div_f32(global2.b.x, -553f), _wgslsmith_f_op_f32(-global2.a.b.x))), Struct_1(select(vec2<bool>(global2.c.x, false), vec2<bool>(false, false), all(vec3<bool>(var_1.x, false, false))), select(select(true, global2.c.x, global2.c.x), var_1.x == true, var_0 > -1i), ~_wgslsmith_add_u32(1u, 49549u)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global2.b.yz)), vec2<f32>(global2.a.d.x, global2.b.x)), vec2<f32>(-826f, _wgslsmith_f_op_f32(1475f - global2.a.b.x)))), _wgslsmith_f_op_vec3_f32(abs(global2.b)), select(select(vec4<bool>(false, true, global2.a.c.b, true), select(global2.c, vec4<bool>(global2.d.a.a.x, false, true, false), global2.c), !var_1.x), select(select(select(global2.c, global2.c, false), global2.c, select(false, false, global2.a.c.a.x)), !(!vec4<bool>(true, false, global2.a.a.b, false)), global2.c), vec4<bool>(!global2.d.c.b, !(!var_1.x), any(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), global2.c.wyy)), !var_2.x)), Struct_2(global2.d.c, global2.d.b, global2.d.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.d.d, global2.a.d) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, 198f))))));
    let var_4 = global2.d.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~26727i, (~global1.x >> (1u % 32u)) >> ((reverseBits(global2.d.a.c) | var_3.d.c.c) % 32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.b.x, var_3.d.b.x, global2.b.x, -2924f)))), firstTrailingBit(vec2<i32>(countOneBits(func_2(vec3<i32>(-1i, -29350i, global1.x), 2204f, global2.d.a).x), u_input.c)));
}

