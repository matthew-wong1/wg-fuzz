struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: f32 = -1011f;

var<private> global2: array<f32, 28> = array<f32, 28>(-2196f, 896f, 682f, -941f, -2082f, 179f, -712f, -946f, -267f, -1188f, 841f, 1296f, -1513f, -1548f, -1084f, -1630f, 1954f, -1000f, 1666f, -1000f, -666f, -206f, -520f, 523f, -428f, 787f, 194f, 196f);

var<private> global3: vec3<f32> = vec3<f32>(-1371f, -1151f, 496f);

var<private> global4: array<bool, 2> = array<bool, 2>(false, true);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = array<Struct_1, 2>();
    var var_0 = Struct_1(_wgslsmith_mod_i32(firstTrailingBit(-reverseBits(-1819i)), (-arg_2.a & 2147483647i) ^ min(_wgslsmith_add_i32(arg_2.a, arg_0.b), _wgslsmith_add_i32(u_input.a, -80781i))), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(1i, 1i)), -vec2<i32>(arg_2.a, -50104i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.x)))))));
    var_0 = Struct_1(arg_0.b, _wgslsmith_sub_i32(max(arg_2.b, ~20730i), -countOneBits(-17198i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1233f + var_0.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(442f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2926f, var_0.c))))));
    var_0 = arg_0;
    let var_1 = ~(~max(abs(~vec3<u32>(0u, arg_1.x, 4294967295u)), min(_wgslsmith_mult_vec3_u32(vec3<u32>(6590u, arg_1.x, 4294967295u), vec3<u32>(25639u, 43600u, arg_1.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 18369u, 4294967295u), vec3<u32>(arg_1.x, 1u, 43073u)))));
    return _wgslsmith_f_op_f32(sign(450f));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: Struct_1) -> u32 {
    let var_0 = countOneBits(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(27228u, 5301u, 54859u), arg_2.x))));
    let var_1 = Struct_1(~u_input.a, -1i, _wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, var_0.x, abs(5434u)), 2u)], firstLeadingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(11880u, var_0.x), var_0.zz)), Struct_1(94i, 22691i, 948f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1649f + global2[_wgslsmith_index_u32(4294967295u, 28u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-646f, 1217f))))))));
    let var_2 = global3.xx;
    global4 = array<bool, 2>();
    return var_0.x;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global2 = array<f32, 28>();
    let var_0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(_wgslsmith_div_f32(2002f, global3.x) * _wgslsmith_f_op_f32(f32(-1f) * -284f)));
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(58513u) ^ func_2(Struct_1(arg_1.x, 2147483647i, 1522f), vec3<i32>(-68865i, 10260i, arg_3.a), select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 2u)], true, global4[_wgslsmith_index_u32(4294967295u, 2u)], global4[_wgslsmith_index_u32(63916u, 2u)]), vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(4294967295u, 2u)], global4[_wgslsmith_index_u32(1u, 2u)]), global4[_wgslsmith_index_u32(1u, 2u)]), arg_2), ~1u), ~44748u, 0u), 2u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1061f, -2444f, _wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -667f)))));
    let var_3 = min(_wgslsmith_mod_i32(arg_3.a, -44165i), countOneBits(~(~(-22442i ^ arg_1.x))));
    return 28696u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec2<bool>(!global4[_wgslsmith_index_u32(firstLeadingBit(28881u), 2u)] | global4[_wgslsmith_index_u32(countOneBits(~0u), 2u)], u_input.a <= u_input.a);
    var var_1 = (vec4<u32>(1u, 1u, 1u, 1u) & vec4<u32>(_wgslsmith_mod_u32(func_1(1735f, vec4<i32>(-5496i, 0i, u_input.a, u_input.a), Struct_1(u_input.a, 0i, -823f), Struct_1(0i, u_input.a, 159f)), 4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), vec3<u32>(43660u, 6625u, 23271u)), 4294967295u, 44508u)) | vec4<u32>(func_1(859f, ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.a, -12502i, -20982i), vec4<i32>(u_input.a, 0i, 1i, u_input.a), vec4<i32>(u_input.a, 2147483647i, u_input.a, 0i)), Struct_1(-2147483647i, -49420i, -354f), Struct_1(1i, 1693i, _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(8772u, 28u)], 615f, false)))), 1u, abs(_wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(4294967295u, 1u, 0u))), 15125u);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, -467f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(ceil(3280f))) * _wgslsmith_f_op_f32(f32(-1f) * -875f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~var_1.x, 28u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(34855u, 28u)])) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1644f)))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1053f, 126f, global2[_wgslsmith_index_u32(var_1.x, 28u)])))), vec3<f32>(-870f, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 28u)])), global2[_wgslsmith_index_u32(30847u, 28u)]))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, global3.x, global2[_wgslsmith_index_u32(var_1.x, 28u)])))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-636f, global3.x, 608f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 373f, global3.x, var_2.x)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global3.x, global2[_wgslsmith_index_u32(var_1.x, 28u)], 146f, -1052f), vec4<f32>(1025f, global3.x, -1162f, 802f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(_wgslsmith_mult_vec3_u32(abs(var_1.wxz), abs(vec3<u32>(var_1.x, 25638u, var_1.x))))), abs(-(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 24508i, -2147483647i), vec3<i32>(2147483647i, -1i, u_input.a)) << (~var_1.wwx % vec3<u32>(32u)))), var_1.wx, _wgslsmith_sub_vec4_i32(~vec4<i32>(27009i, -14882i >> (var_1.x % 32u), _wgslsmith_sub_i32(-10349i, u_input.a), reverseBits(1i)), vec4<i32>(~(u_input.a >> (var_1.x % 32u)), reverseBits(-u_input.a), u_input.a, _wgslsmith_add_i32(-1i, -1984i))));
}

