struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-6031i, -1i, 9546i, 2147483647i, 2147483647i, 0i, 17687i);

var<private> global1: vec3<i32> = vec3<i32>(-25570i, i32(-2147483648), 2147483647i);

var<private> global2: Struct_3 = Struct_3(2147483647i, vec3<i32>(32633i, 1i, -16494i), vec4<i32>(2567i, -27294i, -27437i, 14813i));

var<private> global3: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(-248f, 1120f), vec2<f32>(-136f, 230f), vec2<f32>(-1264f, 305f), vec2<f32>(-922f, 635f), vec2<f32>(-645f, -2879f), vec2<f32>(-153f, -2535f), vec2<f32>(-378f, -1710f), vec2<f32>(-966f, 747f), vec2<f32>(164f, -1279f), vec2<f32>(-336f, -157f), vec2<f32>(1031f, 707f), vec2<f32>(576f, 565f), vec2<f32>(-1172f, 114f), vec2<f32>(-1249f, 533f), vec2<f32>(393f, 1227f), vec2<f32>(1003f, 1487f), vec2<f32>(-433f, 395f), vec2<f32>(-270f, -403f), vec2<f32>(-1510f, 1250f), vec2<f32>(117f, 860f), vec2<f32>(748f, 2320f), vec2<f32>(-1242f, 1459f), vec2<f32>(-1029f, -1061f), vec2<f32>(-142f, 777f), vec2<f32>(-594f, -833f), vec2<f32>(426f, -1121f), vec2<f32>(703f, 955f));

var<private> global4: array<f32, 24> = array<f32, 24>(-1572f, -502f, 630f, -710f, -400f, 240f, -1049f, 770f, -831f, -255f, 837f, 352f, -923f, 1554f, 487f, -375f, 1715f, 1057f, -1234f, 954f, 142f, 1084f, -1224f, 490f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3) -> i32 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_sub_i32(25179i & ~(global1.x << (u_input.c.x % 32u)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(max(global0[_wgslsmith_index_u32(4294967295u, 7u)], global2.b.x), i32(-1i) * -2147483647i), reverseBits(_wgslsmith_sub_i32(-1i, -1i)), max(global1.x, -33018i) ^ 0i)), 26419i);
    global0 = array<i32, 7>();
    let var_1 = Struct_3(_wgslsmith_clamp_i32(21491i, var_0, ~(-(~(-2147483647i)))), global2.b, vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, global0[_wgslsmith_index_u32(35657u, 7u)], global0[_wgslsmith_index_u32(16232u, 7u)]), vec3<i32>(arg_2.c.x, -2411i, u_input.a.x)), vec3<i32>(var_0, 19980i, -2147483647i) >> (vec3<u32>(u_input.d, u_input.e, 21904u) % vec3<u32>(32u))), global1.x >> (~16128u % 32u)), ~(-(arg_2.a ^ -1i)), 0i, ~0i));
    let var_2 = min(-14203i, ~(~arg_2.a));
    var var_3 = vec3<i32>(-(26577i ^ _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_1.b.zy, u_input.a), vec2<i32>(var_0, 4094i))), _wgslsmith_dot_vec2_i32((vec2<i32>(var_1.b.x, arg_2.b.x) | (global2.c.yz << (u_input.c % vec2<u32>(32u)))) & global2.b.xx, select(vec2<i32>(-1i, firstLeadingBit(-2147483647i)), arg_2.b.zz, countOneBits(u_input.d) <= _wgslsmith_div_u32(1u, u_input.d))), 20042i);
    return reverseBits(var_0);
}

fn func_2() -> f32 {
    let var_0 = vec2<i32>(~firstLeadingBit(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(~0u, 7u)], u_input.a.x, 1i)), global0[_wgslsmith_index_u32(u_input.e, 7u)]);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.e, 24u)] - _wgslsmith_f_op_f32(1740f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(0u, 24u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(38473u, 24u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(1u, 24u)] * 1225f)))) * global4[_wgslsmith_index_u32(4294967295u >> (u_input.c.x % 32u), 24u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e, 0u), 24u)] - _wgslsmith_f_op_f32(781f - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.e, 24u)]))), _wgslsmith_div_f32(609f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(1u, 24u)], global4[_wgslsmith_index_u32(u_input.e, 24u)]))))));
    var var_2 = false;
    global2 = Struct_3(~(i32(-1i) * -1i), vec3<i32>(u_input.b, ~1i, func_3(global0[_wgslsmith_index_u32(u_input.d, 7u)] & global1.x, vec4<bool>(true, true, true, false), Struct_3(global0[_wgslsmith_index_u32(15730u, 7u)], vec3<i32>(global1.x, u_input.b, global2.b.x), global2.c))) << (~vec3<u32>(0u | u_input.d, 0u, ~u_input.d) % vec3<u32>(32u)), max((firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], var_0.x, -1i, global2.a)) ^ select(vec4<i32>(global1.x, 1i, 55097i, global0[_wgslsmith_index_u32(104943u, 7u)]), vec4<i32>(2147483647i, u_input.a.x, -2147483647i, -54266i), vec4<bool>(true, false, false, true))) | global2.c, global2.c));
    var var_3 = 719f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, var_1.x))))));
}

fn func_1(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), global4[_wgslsmith_index_u32(~42252u, 24u)], _wgslsmith_f_op_f32(f32(-1f) * -1162f), _wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.e) & reverseBits(u_input.c.x), 24u)])))));
    global2 = Struct_3(2147483647i >> (u_input.d % 32u), _wgslsmith_mod_vec3_i32(-(~vec3<i32>(u_input.a.x, 16813i, u_input.b)) | firstTrailingBit(abs(vec3<i32>(0i, 1i, global2.c.x))), global2.c.ywy), -global2.c);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1083f)), var_0.x, true)), var_0.zw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), ~global2.b);
    global2 = Struct_3(var_1.d.x, ~vec3<i32>(-12156i, _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(var_1.d, var_1.d), vec3<i32>(-2147483647i, 59832i, -61942i)), global0[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_div_vec4_i32(vec4<i32>(~global1.x, min(~global1.x, 1i), var_1.d.x, -_wgslsmith_add_i32(var_1.d.x, -1i)), vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-49136i, arg_0, global0[_wgslsmith_index_u32(7048u, 7u)], -1i), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.e, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(4294967295u, 7u)])), -min(u_input.a.x, 73647i), 0i, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, global1.x, global2.c.x), var_1.d), arg_0 << (12198u % 32u)))));
    var var_2 = var_1.b;
    return any(vec4<bool>(true, true, true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<f32>, 27>();
    var var_0 = vec4<bool>(func_1(_wgslsmith_dot_vec3_i32(global2.c.wwz, vec3<i32>(1i, -32215i, -2147483647i) | vec3<i32>(2147483647i, -1i, global0[_wgslsmith_index_u32(0u, 7u)])) | -countOneBits(u_input.b)), true, true, select((u_input.e << (_wgslsmith_mult_u32(0u, 48894u) % 32u)) == 1u, (_wgslsmith_f_op_f32(576f * global4[_wgslsmith_index_u32(u_input.e, 24u)]) != _wgslsmith_f_op_f32(-1394f * -594f)) || all(vec3<bool>(true, true, true)), false));
    var var_1 = Struct_1(1000f, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(259f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.d, 24u)] - 167f) * global4[_wgslsmith_index_u32(countOneBits(32393u), 24u)])), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.c.x, 24u)])), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(~66844u, 24u)], -485f), min(_wgslsmith_mod_vec3_i32(vec3<i32>(53837i, global0[_wgslsmith_index_u32(u_input.d, 7u)] ^ 2147483647i, 33413i), min(global2.b, abs(vec3<i32>(global1.x, global1.x, -45016i)))), max((global2.c.xxy ^ vec3<i32>(global2.a, 0i, 786i)) >> ((vec3<u32>(u_input.e, u_input.c.x, 4294967295u) >> (vec3<u32>(u_input.e, u_input.e, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), global2.c.xzx)));
    global4 = array<f32, 24>();
    var var_2 = countOneBits(-24728i);
    let var_3 = !vec4<bool>(var_1.a != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(u_input.c.x, 24u)])) - 709f), false, var_0.x, var_1.c != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_f32(var_1.a - 625f))));
    let var_4 = -global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global4[_wgslsmith_index_u32(firstLeadingBit(~54454u), 24u)], var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-211f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(u_input.e, 24u)]))))));
}

