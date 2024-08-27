struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec2<u32>(1189u, 4294967295u), vec2<f32>(-380f, 1058f), vec3<u32>(1u, 4294967295u, 13675u)), Struct_1(vec2<u32>(4294967295u, 14920u), vec2<f32>(549f, 382f), vec3<u32>(0u, 1u, 3840u)), Struct_1(vec2<u32>(5447u, 4294967295u), vec2<f32>(1726f, -1559f), vec3<u32>(18547u, 461u, 4294967295u)), Struct_1(vec2<u32>(55297u, 4294967295u), vec2<f32>(620f, 593f), vec3<u32>(68752u, 37773u, 4294967295u)), Struct_1(vec2<u32>(37426u, 4294967295u), vec2<f32>(-1267f, 247f), vec3<u32>(0u, 9106u, 1u)), Struct_1(vec2<u32>(1u, 1u), vec2<f32>(-1164f, -216f), vec3<u32>(6045u, 4294967295u, 1u)), Struct_1(vec2<u32>(0u, 8564u), vec2<f32>(-880f, -1721f), vec3<u32>(0u, 77769u, 16429u)), Struct_1(vec2<u32>(1u, 53402u), vec2<f32>(1045f, 411f), vec3<u32>(12052u, 42656u, 4294967295u)), Struct_1(vec2<u32>(45616u, 55059u), vec2<f32>(-1023f, -367f), vec3<u32>(85471u, 1u, 0u)), Struct_1(vec2<u32>(53949u, 4247u), vec2<f32>(877f, 905f), vec3<u32>(1u, 0u, 42759u)), Struct_1(vec2<u32>(6020u, 7402u), vec2<f32>(-212f, 865f), vec3<u32>(14848u, 23673u, 57271u)), Struct_1(vec2<u32>(1u, 4294967295u), vec2<f32>(1000f, -918f), vec3<u32>(20440u, 41431u, 4294967295u)), Struct_1(vec2<u32>(15610u, 1504u), vec2<f32>(-257f, -980f), vec3<u32>(1u, 58296u, 1u)), Struct_1(vec2<u32>(0u, 71191u), vec2<f32>(453f, 1103f), vec3<u32>(46766u, 29633u, 4520u)), Struct_1(vec2<u32>(13557u, 57897u), vec2<f32>(-1214f, 1329f), vec3<u32>(43347u, 4294967295u, 1u)), Struct_1(vec2<u32>(1u, 119761u), vec2<f32>(410f, 889f), vec3<u32>(4294967295u, 60588u, 21929u)), Struct_1(vec2<u32>(25941u, 46220u), vec2<f32>(-656f, 497f), vec3<u32>(0u, 69395u, 1u)));

var<private> global2: f32 = 132f;

var<private> global3: vec3<u32>;

var<private> global4: i32 = 2893i;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> i32 {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec2_i32(firstTrailingBit(reverseBits(abs(vec2<i32>(u_input.c, u_input.c)))), ~firstTrailingBit(arg_0.a.zy)));
    let var_1 = 33709u;
    global0 = -1455f;
    global0 = arg_2.b.x;
    var var_2 = arg_2;
    return u_input.c;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<i32>) -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(sign(621f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1085f)) - _wgslsmith_f_op_f32(1000f - 1768f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2501f), _wgslsmith_f_op_f32(step(-1546f, -1284f))))))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(round(-417f)), true)));
    return ~arg_2;
}

fn func_2(arg_0: vec4<bool>, arg_1: u32, arg_2: i32) -> vec4<f32> {
    var var_0 = global1[_wgslsmith_index_u32(38326u, 17u)];
    let var_1 = select(u_input.b, vec4<u32>(12760u | _wgslsmith_add_u32(_wgslsmith_mod_u32(4294967295u, var_0.c.x), ~var_0.c.x), ~u_input.b.x, _wgslsmith_dot_vec3_u32(var_0.c, var_0.c), (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), u_input.b.xz) << (~0u % 32u)) >> (arg_1 % 32u)), arg_0);
    let var_2 = true;
    var var_3 = Struct_3(~vec3<i32>(~arg_2, _wgslsmith_sub_i32(arg_2, ~21516i), firstLeadingBit(1i >> (var_0.c.x % 32u))));
    global4 = -func_4(27731i, select(vec4<i32>(firstTrailingBit(-2147483647i), -2420i, _wgslsmith_sub_i32(0i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(17436i, var_3.a.x, u_input.c, 1i), vec4<i32>(2147483647i, -28295i, var_3.a.x, arg_2))), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, u_input.c, 16363i, u_input.c), arg_0), -1i, vec4<i32>(-22086i, -11949i, -_wgslsmith_sub_i32(-7814i, var_3.a.x), func_3(Struct_3(vec3<i32>(0i, arg_2, -38026i)), var_0.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 17u)], 0u)));
    return vec4<f32>(217f, -527f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-908f + -270f) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1898f, _wgslsmith_f_op_f32(sign(var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) + _wgslsmith_f_op_f32(min(var_0.b.x, var_0.b.x)))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - -611f), _wgslsmith_f_op_f32(var_0.b.x + -894f))), _wgslsmith_f_op_f32(f32(-1f) * -216f))));
}

fn func_1() -> Struct_2 {
    var var_0 = vec4<bool>(!(!(!any(vec4<bool>(true, true, false, true)))), true, false, false);
    var var_1 = vec2<u32>(~(~(26635u ^ u_input.b.x)), ~1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(func_2(select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_0.x, any(vec4<bool>(false, false, true, true)), any(vec4<bool>(false, false, var_0.x, true)), var_0.x), !(!all(vec3<bool>(var_0.x, true, true)))), 38832u, u_input.c));
    let var_3 = Struct_1(vec2<u32>(~(~(var_1.x & var_1.x)), firstLeadingBit(~u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, var_2.x))))), _wgslsmith_add_vec3_u32(u_input.b.zyy, ~(~u_input.b.wzz & _wgslsmith_mult_vec3_u32(u_input.b.xyx, u_input.b.www))));
    let var_4 = ~var_3.a;
    return Struct_2(Struct_1(~(~_wgslsmith_sub_vec2_u32(var_3.a, var_3.a)), _wgslsmith_div_vec2_f32(vec2<f32>(-1505f, _wgslsmith_f_op_f32(-183f - 1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + var_2.wz))), abs(vec3<u32>(31805u, var_4.x, u_input.b.x) & ~vec3<u32>(20913u, global3.x, var_4.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(func_1().a.b.x)));
    var var_2 = !vec3<bool>(false, true, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true)));
    let var_3 = func_1();
    let var_4 = func_1().a;
    var var_5 = func_1();
    var var_6 = global1[_wgslsmith_index_u32(0u, 17u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(select((var_6.c.yz ^ var_0.a.a) | firstLeadingBit(global3.xy), select(vec2<u32>(global3.x, var_3.a.a.x), ~vec2<u32>(global3.x, var_5.a.c.x), vec2<bool>(true, var_2.x)), 0u < _wgslsmith_add_u32(var_5.a.c.x, 4294967295u)), countOneBits(vec2<u32>(var_6.a.x, var_6.c.x)) << (_wgslsmith_div_vec2_u32(select(vec2<u32>(65035u, 4294967295u), var_3.a.a, var_2.x), ~var_5.a.c.yx) % vec2<u32>(32u)), var_2.x), var_5.a.b.x, ~var_6.c);
}

