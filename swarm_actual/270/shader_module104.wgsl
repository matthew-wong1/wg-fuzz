struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 26>;

var<private> global1: Struct_2;

var<private> global2: bool = true;

var<private> global3: Struct_2 = Struct_2(vec2<bool>(true, true));

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(vec2<bool>(false, any(!vec4<bool>(global3.a.x, true, global1.a.x, false)) | true));
    global2 = u_input.a != (16254u ^ ~u_input.a);
    global1 = Struct_2(!(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), !vec2<bool>(global3.a.x, false), all(vec4<bool>(var_0.a.x, false, true, global3.a.x)))));
    global2 = true;
    return true;
}

fn func_2() -> i32 {
    global1 = Struct_2(!vec2<bool>(global1.a.x, !global1.a.x));
    global1 = Struct_2(global3.a);
    var var_0 = (vec3<i32>(-1i) * -vec3<i32>(u_input.c & u_input.c, u_input.b.x, u_input.c)) >> (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(~0u, ~4294967295u, ~u_input.a)), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(20742u, 1u, ~u_input.a))) % vec3<u32>(32u));
    let var_1 = Struct_2(select(!global3.a, !select(global3.a, global1.a, func_3()), !vec2<bool>(!global1.a.x, false)));
    global3 = Struct_2(select(select(!vec2<bool>(var_1.a.x, false), vec2<bool>(false, func_3()), any(vec3<bool>(false, var_1.a.x, global3.a.x)) != true), global3.a, select(select(select(vec2<bool>(var_1.a.x, false), global3.a, true), !global3.a, vec2<bool>(true, true)), !vec2<bool>(global3.a.x, false), global1.a.x || true)));
    return _wgslsmith_sub_i32(_wgslsmith_clamp_i32(countOneBits(-u_input.b.x) | var_0.x, 45606i, firstLeadingBit(1i)), _wgslsmith_mod_i32(var_0.x, var_0.x));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    global0 = array<vec3<f32>, 26>();
    let var_0 = Struct_3(u_input.b.x, ~u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(1126f, 223f, -549f, 1272f) * _wgslsmith_div_vec4_f32(vec4<f32>(-1249f, -785f, -409f, -338f), vec4<f32>(2344f, -217f, 882f, -533f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1944f, -441f, -679f), vec4<f32>(-183f, 755f, -1009f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(680f, -730f, 1000f, 2432f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-955f, 1059f, 1824f, 933f) * vec4<f32>(-975f, 447f, 1581f, 908f)))))), _wgslsmith_add_i32(-1i, ~_wgslsmith_sub_i32(firstLeadingBit(1i), ~(-10051i))));
    var var_1 = u_input.a;
    var var_2 = vec3<bool>(true, global3.a.x, false);
    var var_3 = var_0;
    return ~(~func_2());
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec3<f32>) -> Struct_2 {
    global0 = array<vec3<f32>, 26>();
    var var_0 = Struct_3(reverseBits(arg_0), ~1i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, -842f, arg_3.x) * vec4<f32>(arg_3.x, 2075f, -1458f, 1862f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-481f, -926f, arg_3.x, 1132f)))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1582f, arg_3.x, -932f, -1007f), vec4<f32>(-2430f, arg_3.x, arg_3.x, arg_3.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(736f, 906f, arg_3.x, arg_3.x)))))))), -1i);
    global1 = Struct_2(!select(!vec2<bool>(global1.a.x, true), !select(global3.a, global1.a, global1.a.x), true));
    let var_1 = Struct_3((1483i ^ select(-44893i, ~var_0.b, -405f != arg_3.x)) ^ 1i, u_input.b.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1895f, 1000f, 362f, 589f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, var_0.c.x, arg_3.x, arg_3.x) * var_0.c))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 149f, var_0.c.x, -1654f), vec4<f32>(arg_3.x, 1119f, 166f, arg_3.x)))))))), ~(~func_1(Struct_2(global3.a), Struct_2(vec2<bool>(global1.a.x, false)))));
    let var_2 = _wgslsmith_div_vec4_i32(~select(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, 11472i, var_1.d, 34105i), u_input.b), u_input.b, vec4<bool>(global3.a.x, false, false, true)), _wgslsmith_div_vec4_i32(u_input.b, firstTrailingBit(vec4<i32>(u_input.b.x, -74612i, 6226i, var_1.b))) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(16875u, u_input.a, 37715u, u_input.a), vec4<u32>(45373u, 58778u, u_input.a, u_input.a)) % vec4<u32>(32u))) ^ -u_input.b;
    return Struct_2(vec2<bool>(false, arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = true;
    var var_0 = select(-vec2<i32>(u_input.c, -reverseBits(u_input.b.x)), ~vec2<i32>(-u_input.c, -_wgslsmith_add_i32(1i, u_input.b.x)), false);
    var var_1 = func_4(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_mult_vec3_i32(~vec3<i32>(var_0.x, var_0.x, -1i), ~vec3<i32>(var_0.x, -1i, u_input.c))), vec3<i32>(_wgslsmith_div_i32(func_1(Struct_2(global3.a), Struct_2(global3.a)), u_input.c), 1i, -37855i)), func_3(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-399f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-248f + 1304f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1051f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(1u, 26u)]), global0[_wgslsmith_index_u32(1038u, 26u)]), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(u_input.a, 26u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 50476u, 56833u), vec4<u32>(u_input.a, 9297u, 0u, 1u)), vec4<u32>(4294967295u, 26217u, u_input.a, 47528u) >> (vec4<u32>(u_input.a, u_input.a, 58106u, 0u) % vec4<u32>(32u))), 26u)]))));
    var var_2 = vec2<f32>(243f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(101f)))))));
    var var_3 = Struct_3(_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(22585i, -29281i, var_0.x, -1i), u_input.b), 2147483647i) | -reverseBits(~u_input.b.x), var_0.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(trunc(1934f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_2.x * 2225f)))))), i32(-1i) * -(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 1i), u_input.b.zy) & select(u_input.b.x, 14430i, true)));
    let var_4 = Struct_3(u_input.b.x, -_wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(var_3.a, var_0.x)), u_input.b.yy), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.c - vec4<f32>(-2188f, var_2.x, var_3.c.x, 293f))), var_3.c, !select(vec4<bool>(global3.a.x, false, global3.a.x, false), vec4<bool>(global1.a.x, false, true, false), vec4<bool>(true, true, var_1.a.x, global1.a.x)))), vec4<f32>(905f, -1286f, var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-216f)))))), max(~var_3.d ^ -var_0.x, var_3.d));
    var_1 = Struct_2(global1.a);
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_4.c.yw, _wgslsmith_f_op_vec2_f32(vec2<f32>(525f, var_2.x) * vec2<f32>(1389f, _wgslsmith_f_op_f32(step(-1000f, var_2.x))))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_4.c.ww) * _wgslsmith_f_op_vec2_f32(var_4.c.wy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(953f, var_4.c.x)))))));
    var var_5 = var_3.a ^ u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec2<f32>(-1000f, _wgslsmith_f_op_f32(trunc(-299f))), firstTrailingBit(select(_wgslsmith_sub_vec3_i32(max(u_input.b.yzw, u_input.b.wxz), vec3<i32>(0i, var_0.x, -9172i)), vec3<i32>(var_0.x, var_3.a, _wgslsmith_sub_i32(-2147483647i, var_0.x)), select(select(vec3<bool>(false, var_1.a.x, global1.a.x), vec3<bool>(false, var_1.a.x, var_1.a.x), vec3<bool>(true, global1.a.x, global3.a.x)), select(vec3<bool>(false, true, var_1.a.x), vec3<bool>(true, false, global3.a.x), vec3<bool>(var_1.a.x, global3.a.x, global3.a.x)), vec3<bool>(true, true, global3.a.x)))));
}

