struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: i32,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 26>;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<bool>(false, false, false), vec3<i32>(1i, -14154i, 0i), 2147483647i, vec2<f32>(185f, -159f)), Struct_1(vec3<bool>(true, false, true), vec3<i32>(-31826i, -43416i, i32(-2147483648)), i32(-2147483648), vec2<f32>(-1154f, -461f)), Struct_1(vec3<bool>(true, true, true), vec3<i32>(2147483647i, 17432i, 10329i), 60662i, vec2<f32>(-1343f, 184f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_i32(arg_0.c, ~abs(reverseBits(_wgslsmith_mult_i32(arg_0.c, 0i))));
    global1 = array<Struct_1, 3>();
    var_0 = arg_2.b.x;
    var var_1 = _wgslsmith_div_vec2_u32(select(vec2<u32>(46484u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), ~select(u_input.b.xy, vec2<u32>(u_input.a.x, 35954u), vec2<bool>(arg_3.x, true)), true), vec2<u32>(countOneBits(68717u) ^ (4294967295u & u_input.a.x), _wgslsmith_add_u32(u_input.a.x, 1u))) << (u_input.a % vec2<u32>(32u));
    let var_2 = -vec3<i32>(-12324i & _wgslsmith_sub_i32(arg_0.b.x, countOneBits(arg_2.b.x)), u_input.d.x, -5626i >> (~var_1.x % 32u));
    return !select(vec3<bool>(arg_0.a.x, arg_3.x, true), vec3<bool>(all(select(vec4<bool>(arg_3.x, false, true, false), vec4<bool>(true, arg_3.x, arg_3.x, true), vec4<bool>(arg_2.a.x, false, false, arg_1.a.x))), _wgslsmith_f_op_f32(-arg_2.d.x) > arg_1.d.x, true), arg_0.b.x == arg_1.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_add_i32(u_input.d.x, ~(_wgslsmith_dot_vec4_i32(vec4<i32>(-10333i, -2147483647i, 43907i, 22175i), vec4<i32>(-14874i, u_input.c.x, arg_0.c, -33639i)) << (_wgslsmith_div_u32(u_input.a.x, 4294967295u) % 32u))) == ~(~_wgslsmith_div_i32(-2147483647i, ~u_input.c.x));
    var var_1 = _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a.x, 1u), u_input.b.xy);
    let var_2 = arg_1;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.d.x)) * arg_0.d.x) + _wgslsmith_f_op_f32(-arg_1.d.x)));
    global1 = array<Struct_1, 3>();
    return !(arg_0.c != -(_wgslsmith_dot_vec4_i32(vec4<i32>(34790i, arg_0.b.x, 30331i, u_input.c.x), vec4<i32>(1i, u_input.c.x, 19994i, -46980i)) | _wgslsmith_mult_i32(-22653i, arg_1.b.x)));
}

fn func_2(arg_0: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_mult_vec2_u32(u_input.a, u_input.b.zx);
    let var_1 = vec4<bool>(func_4(Struct_1(func_3(Struct_1(vec3<bool>(false, true, false), vec3<i32>(-200i, u_input.d.x, u_input.c.x), u_input.c.x, vec2<f32>(-1116f, -1608f)), Struct_1(vec3<bool>(false, false, true), arg_0, arg_0.x, vec2<f32>(577f, -1000f)), global1[_wgslsmith_index_u32(~u_input.a.x, 3u)], vec3<bool>(true, true, true)), reverseBits(firstTrailingBit(vec3<i32>(2147483647i, u_input.c.x, u_input.d.x))), 1i, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-194f, 184f))))), Struct_1(select(func_3(Struct_1(vec3<bool>(false, false, false), vec3<i32>(-1i, u_input.c.x, u_input.d.x), 0i, vec2<f32>(109f, 894f)), global1[_wgslsmith_index_u32(36675u, 3u)], Struct_1(vec3<bool>(false, true, true), vec3<i32>(-1i, -73926i, u_input.d.x), arg_0.x, vec2<f32>(-455f, -1403f)), vec3<bool>(true, false, false)), vec3<bool>(false, false, false), false), ~u_input.c, u_input.d.x, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1142f, 822f)), vec2<f32>(-1853f, 1263f)))), false, true, true);
    let var_2 = _wgslsmith_f_op_f32(ceil(1205f));
    var var_3 = global1[_wgslsmith_index_u32(43713u, 3u)];
    var var_4 = select(var_0 << (min(firstLeadingBit(countOneBits(var_0)), min(_wgslsmith_div_vec2_u32(u_input.b.yz, vec2<u32>(12732u, var_0.x)), ~var_0)) % vec2<u32>(32u)), u_input.a, var_1.zz);
    return false;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<i32>, 26>();
    global1 = array<Struct_1, 3>();
    var var_0 = Struct_1(!select(!select(vec3<bool>(false, true, arg_0), vec3<bool>(false, arg_1.a.x, true), arg_1.a), vec3<bool>(all(vec4<bool>(true, arg_1.a.x, false, false)), all(vec4<bool>(false, arg_1.a.x, arg_0, false)), func_2(u_input.d)), false), ~vec3<i32>((arg_1.c & u_input.d.x) & 0i, i32(-1i) * -82934i, -_wgslsmith_mult_i32(u_input.c.x, -9901i)), arg_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1.d.x, arg_1.d.x)))), arg_1.d))));
    let var_1 = vec3<f32>(317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.d.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1034f - arg_1.d.x) * 1000f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-883f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-447f, var_1.x, var_1.x, -1016f) + vec4<f32>(-115f, -1000f, 178f, -737f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(856f, 1633f, -733f, var_1.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -334f, var_1.x, 1926f), vec4<f32>(920f, arg_1.d.x, 1112f, 303f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-281f, -450f, 800f, 1459f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_1.x, 1036f, 361f, var_1.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.x))), var_1.x, arg_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)))));
    return Struct_1(func_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, u_input.b.x, 9113u, 1u) << (vec4<u32>(u_input.a.x, u_input.b.x, 87253u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, 32881u, u_input.b.x, 4294967295u), vec4<u32>(u_input.a.x, 12316u, u_input.a.x, 0u)) ^ abs(vec4<u32>(u_input.a.x, 83583u, 4294967295u, 4294967295u))), 3u)], Struct_1(!(!vec3<bool>(arg_1.a.x, false, arg_0)), reverseBits(vec3<i32>(u_input.c.x, var_0.b.x, arg_1.b.x)), -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * vec2<f32>(var_0.d.x, var_1.x)))), global1[_wgslsmith_index_u32(~1u, 3u)], vec3<bool>(arg_1.a.x, true, select(false, arg_0, arg_0) == (555f < var_2.x))), abs(vec3<i32>(arg_1.b.x >> (~1u % 32u), ~min(-37916i, u_input.c.x), 1i)), _wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(2147483647i, var_0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.d, vec2<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), 151f)))));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    global0 = array<vec2<i32>, 26>();
    var var_1 = 0i;
    let var_2 = arg_1.a;
    var var_3 = -reverseBits(vec4<i32>(reverseBits(-11539i), -arg_1.b.x, _wgslsmith_add_i32(-2147483647i, u_input.c.x), 1i)) ^ (vec4<i32>(_wgslsmith_div_i32(-54280i, u_input.d.x), arg_1.c | -u_input.d.x, ~func_1(arg_1.a.x, Struct_1(var_2, u_input.d, u_input.c.x, arg_1.d)).c, -28366i) | vec4<i32>(arg_1.c, ~firstTrailingBit(-24732i), 1i, 1515i));
    return vec4<bool>(false, arg_1.a.x, arg_1.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(642f, 1277f, true)) + -1580f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2836f, var_0)) * _wgslsmith_f_op_f32(-273f * -1182f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(11953u, 3u)];
    let var_1 = global1[_wgslsmith_index_u32(~14080u, 3u)];
    let var_2 = false;
    var_0 = global1[_wgslsmith_index_u32(abs(abs(4294967295u)), 3u)];
    var var_3 = 0u;
    var var_4 = select(!(!func_5(vec4<f32>(var_1.d.x, -1066f, var_0.d.x, -387f), func_1(var_0.a.x, Struct_1(vec3<bool>(true, var_1.a.x, var_1.a.x), vec3<i32>(u_input.c.x, 1i, var_0.b.x), 33227i, var_0.d)), vec3<f32>(var_0.d.x, var_1.d.x, var_1.d.x))), func_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), 1503f, _wgslsmith_f_op_f32(floor(319f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.d.x, -1000f)) + _wgslsmith_f_op_f32(var_1.d.x * var_1.d.x))), func_1(false, Struct_1(var_1.a, -u_input.c, var_1.b.x ^ u_input.c.x, _wgslsmith_f_op_vec2_f32(var_1.d * var_1.d))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * -363f), _wgslsmith_f_op_f32(-104f * _wgslsmith_f_op_f32(var_0.d.x * var_0.d.x)), -721f)), func_3(Struct_1(!(!vec3<bool>(true, true, var_1.a.x)), var_0.b, min(min(var_0.b.x, u_input.c.x), reverseBits(1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1326f, var_0.d.x)) + _wgslsmith_div_vec2_f32(var_0.d, var_0.d))), Struct_1(var_0.a, ~vec3<i32>(var_1.c, 45765i, u_input.c.x), abs(_wgslsmith_clamp_i32(var_0.b.x, 15542i, 2147483647i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-119f, -155f)))), global1[_wgslsmith_index_u32(~u_input.a.x, 3u)], select(!vec3<bool>(var_0.a.x, false, false), select(func_1(var_1.a.x, Struct_1(var_0.a, var_1.b, u_input.d.x, vec2<f32>(var_0.d.x, -656f))).a, select(var_0.a, vec3<bool>(var_0.a.x, var_0.a.x, false), var_0.a.x), vec3<bool>(var_0.a.x, var_1.a.x, false)), var_1.a)).x);
    let var_5 = _wgslsmith_mult_vec4_i32(vec4<i32>(17760i, ~(-46305i ^ -var_0.c), _wgslsmith_mult_i32(var_1.c, reverseBits(func_1(true, Struct_1(vec3<bool>(false, var_2, true), var_0.b, 1i, var_1.d)).b.x)), -abs(max(-1i, 0i))), -(~(vec4<i32>(-9977i, 1i, 2147483647i, u_input.d.x) | vec4<i32>(var_0.b.x, var_1.b.x, var_0.c, 0i)) | abs(firstLeadingBit(vec4<i32>(0i, 0i, var_1.c, -1i)))));
    var var_6 = Struct_1(vec3<bool>(any(!var_0.a), true, var_1.d.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x * -204f) + _wgslsmith_f_op_f32(592f - var_1.d.x))), vec3<i32>(-2147483647i, u_input.d.x, var_5.x), 1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(floor(-1848f))))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_6.d.x + 864f), _wgslsmith_f_op_f32(2051f + var_1.d.x), _wgslsmith_f_op_f32(ceil(-1123f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) - -1580f) + 1382f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-331f - -378f) - var_0.d.x), var_6.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1601f)));
}

