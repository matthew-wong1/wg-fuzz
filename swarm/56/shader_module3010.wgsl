struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: vec4<f32>,
    c: vec4<u32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1000f)), -150f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -643f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(826f, -558f, 1568f)), vec3<f32>(1138f, 380f, -226f))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-988f)), 668f, _wgslsmith_f_op_f32(select(940f, 1018f, true)))))));
    var var_1 = -70660i;
    global0 = array<Struct_1, 4>();
    var_1 = -global2.a.a.x;
    var var_2 = vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-var_0.x));
    return Struct_4(~u_input.a, Struct_1(_wgslsmith_mult_vec3_i32(global2.d.a, global2.a.a)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32((1u & _wgslsmith_sub_u32(1u, u_input.b)) >> (global2.e % 32u), 1u), 4u)];
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(117f, -183f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-137f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 1439f)));
    let var_2 = select(!vec2<bool>(true | arg_0.x, true), !(!arg_0), u_input.b > global2.e);
    return Struct_2(arg_1.b, 54203u, countOneBits(firstLeadingBit(global2.d.a.x)), Struct_1(vec3<i32>(71620i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-21185i, -14973i, global3.a.x, 35769i), vec4<i32>(arg_1.a.x, var_0.a.x, arg_1.b.a.x, 64134i))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.a.x, global3.a.x, u_input.c), -60509i, firstLeadingBit(60727i)))), _wgslsmith_mod_u32(57533u << (global2.e % 32u), u_input.b));
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = ~global3.a.x;
    global2 = func_3(vec2<bool>(arg_0.x >= -1954f, true), func_2());
    let var_1 = -1079f;
    let var_2 = Struct_5(all(vec3<bool>(true, true, true)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x - var_1), _wgslsmith_f_op_f32(min(var_1, var_1))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1)) * -564f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), 189f, var_1), ~countOneBits(~vec4<u32>(1u, global2.b, u_input.b, u_input.b)) | select(_wgslsmith_mod_vec4_u32(vec4<u32>(10034u, global2.e, 1u, 1u), abs(vec4<u32>(global2.b, global2.e, 11961u, 4294967295u))), select(~vec4<u32>(u_input.b, 1u, u_input.b, global2.e), vec4<u32>(1u, 17992u, global2.e, 92253u), any(vec2<bool>(true, false))), vec4<bool>(true, true, true, true)), false, any(vec3<bool>(true, any(vec2<bool>(true, true)), any(vec2<bool>(true, true)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_2.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(2122f, -949f, var_1, _wgslsmith_div_f32(-575f, 1000f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, -344f, arg_0.x, arg_0.x), var_2.b)))), var_2.b, vec4<bool>(true, false, !var_2.e, select(false, select(global2.e, var_2.c.x, var_2.a) < 54351u, select(!var_2.d, all(vec3<bool>(var_2.d, true, var_2.e)), var_2.a)))));
    return func_2();
}

fn func_4(arg_0: f32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(Struct_2(func_1(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1523f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(795f, arg_0, 615f, arg_0), vec4<f32>(1263f, 529f, arg_0, arg_0)))))).b, ~(~(u_input.b << (39476u % 32u))), _wgslsmith_div_i32(0i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.c), arg_1.a), -global2.c)), func_3(vec2<bool>(true, true), func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-340f, arg_0, arg_0, -512f), vec4<f32>(arg_0, -2367f, arg_0, 101f))))).d, abs(_wgslsmith_div_u32(112520u, ~global2.e))), func_3(select(vec2<bool>(true, true), vec2<bool>(true, true), false), func_1(vec4<f32>(_wgslsmith_f_op_f32(155f + 1188f), _wgslsmith_f_op_f32(-arg_0), -1707f, arg_0))).a, max(_wgslsmith_clamp_i32(-arg_1.b.a.x, func_3(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)), arg_1).d.a.x, 8320i), 0i), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(~11371u, _wgslsmith_mod_u32(global2.e, global2.e)), vec2<u32>(0u, global2.b & 9331u)), ~vec2<u32>(4294967295u, ~0u)), 4u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-307f, -1079f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(948f, -459f), vec2<f32>(arg_0, -108f)))))));
    global2 = func_3(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), arg_1);
    global0 = array<Struct_1, 4>();
    let var_1 = var_0.d.a.x;
    var var_2 = 20554i;
    return func_2().b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(205f, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1006f, _wgslsmith_div_f32(-348f, 674f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-665f, -442f, -1000f, 186f)))));
    global3 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -global2.d.a, ~reverseBits(vec3<i32>(u_input.c, -1i, global3.a.x))) << (vec3<u32>(~84536u, abs(countOneBits(u_input.b)), max(u_input.b, 3333u) | _wgslsmith_clamp_u32(u_input.b, 0u, 4294967295u)) % vec3<u32>(32u)));
    var var_0 = Struct_5(any(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), 0i < _wgslsmith_sub_i32(u_input.a.x, global3.a.x))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(310f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -154f) + _wgslsmith_f_op_f32(f32(-1f) * -1785f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + _wgslsmith_f_op_f32(step(-130f, 859f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(976f - 203f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -690f), _wgslsmith_f_op_f32(f32(-1f) * -858f))))), _wgslsmith_add_vec4_u32(~vec4<u32>(5820u, func_3(vec2<bool>(false, false), Struct_4(global2.a.a.zy, Struct_1(vec3<i32>(-102700i, global2.d.a.x, global3.a.x)))).b, 15472u, u_input.b), vec4<u32>(_wgslsmith_mod_u32(func_3(vec2<bool>(false, true), Struct_4(vec2<i32>(global2.c, global2.d.a.x), global2.a)).b, 12964u), 11928u, global2.b, 10141u & _wgslsmith_add_u32(u_input.b, global2.e))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2360f) + -492f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1055f - 406f))) - _wgslsmith_f_op_f32(step(-190f, -656f))), any(vec4<bool>(true, true, true, true)));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b.x)))))))));
    var var_1 = vec4<u32>(firstLeadingBit(54558u), abs(1u), ~var_0.c.x, 0u) << (_wgslsmith_mult_vec4_u32(((vec4<u32>(global2.b, 4294967295u, 70491u, 15605u) >> (vec4<u32>(var_0.c.x, 1u, 0u, u_input.b) % vec4<u32>(32u))) | ~vec4<u32>(13348u, u_input.b, 10951u, 4294967295u)) >> ((max(var_0.c, var_0.c) << (var_0.c % vec4<u32>(32u))) % vec4<u32>(32u)), countOneBits(var_0.c)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.x, ~var_0.c, _wgslsmith_sub_i32(~(-25828i), -1780i));
}

