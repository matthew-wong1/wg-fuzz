struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(1u, 22541u, 1u, 57650u, 1u);

var<private> global1: array<bool, 9>;

var<private> global2: Struct_3;

var<private> global3: array<Struct_4, 14> = array<Struct_4, 14>(Struct_4(Struct_3(0u)), Struct_4(Struct_3(23938u)), Struct_4(Struct_3(5659u)), Struct_4(Struct_3(2297u)), Struct_4(Struct_3(9242u)), Struct_4(Struct_3(56419u)), Struct_4(Struct_3(30157u)), Struct_4(Struct_3(19653u)), Struct_4(Struct_3(0u)), Struct_4(Struct_3(39884u)), Struct_4(Struct_3(4294967295u)), Struct_4(Struct_3(83276u)), Struct_4(Struct_3(9436u)), Struct_4(Struct_3(53905u)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global0 = array<u32, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(924f, -373f, -947f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f)), _wgslsmith_f_op_f32(floor(197f)), 377f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -302f, -375f) + vec3<f32>(-816f, -1497f, 552f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1001f, -2318f, 480f) * vec3<f32>(675f, 252f, -2201f))))))));
    let var_1 = _wgslsmith_mod_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(-17466i, 9455i, u_input.a.x, 13723i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(11987i, 45344i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 52551i))), ~countOneBits(-vec4<i32>(-64958i, 0i, u_input.a.x, 0i)) >> (vec4<u32>(1u, _wgslsmith_div_u32(1u, 62611u), firstTrailingBit(0u) << (global2.a % 32u), _wgslsmith_dot_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24717u, 5u)], 5u)], 4562u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)]), vec3<u32>(22102u, 1u, 11436u)))) % vec4<u32>(32u)));
    var var_2 = -(~(vec3<i32>(8424i, _wgslsmith_mult_i32(1i, 33884i), -var_1.x) ^ var_1.wzz));
    var var_3 = (-_wgslsmith_clamp_i32(var_2.x, -1i, countOneBits(-75853i)) | -9657i) >> (global2.a % 32u);
    return ~u_input.b;
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: vec4<i32>) -> Struct_3 {
    let var_0 = ~vec4<u32>(func_3(), u_input.b, ~firstTrailingBit(global2.a), reverseBits(~33560u));
    var var_1 = Struct_3(u_input.b);
    return Struct_3(var_1.a);
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = vec4<u32>(~_wgslsmith_mod_u32(abs(0u), arg_2.x), _wgslsmith_mod_u32(_wgslsmith_mult_u32(reverseBits(_wgslsmith_mod_u32(4294967295u, 1u)), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(arg_0.a, 5u)], u_input.b)), ~108074u), arg_0.a, ~_wgslsmith_div_u32(arg_2.x, arg_3.a.a));
    global3 = array<Struct_4, 14>();
    var var_1 = all(!select(vec2<bool>(global1[_wgslsmith_index_u32(global2.a, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)]), !vec2<bool>(global1[_wgslsmith_index_u32(arg_0.a, 9u)], global1[_wgslsmith_index_u32(global2.a, 9u)]), true && global1[_wgslsmith_index_u32(50008u, 9u)])) && global1[_wgslsmith_index_u32(global2.a, 9u)];
    var_1 = select(!any(!(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 9u)], false, global1[_wgslsmith_index_u32(u_input.b, 9u)]))), all(!select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a, 9u)], true, global1[_wgslsmith_index_u32(0u, 9u)]), select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(56414u, 9u)]), all(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_3.a.a, 9u)])))), select(!(var_0.x >= ~var_0.x), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(33801u, ~var_0.x), 48300u), 9u)], ~4294967295u <= ~_wgslsmith_div_u32(arg_3.a.a, arg_2.x)));
    let var_2 = Struct_2(Struct_1(reverseBits(49436u), vec2<f32>(941f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(172f * 171f))), !(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(arg_0.a, 9u)], false, false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 9u)], true, global1[_wgslsmith_index_u32(112554u, 9u)], true), global1[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, -1i)), min(u_input.a.x, arg_1)), ~(~arg_1))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(u_input.a, vec2<i32>(arg_1, arg_1)), select(u_input.a, _wgslsmith_div_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, arg_1)), select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(71930u, 9u)], global1[_wgslsmith_index_u32(102892u, 9u)]), global1[_wgslsmith_index_u32(4294967295u, 9u)])) >> (~max(vec2<u32>(arg_3.a.a, 0u), arg_2.yz) % vec2<u32>(32u))), Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1033f, -290f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(267f, -486f), vec2<f32>(-172f, 168f))))), !vec4<bool>(!global1[_wgslsmith_index_u32(arg_2.x, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], true, arg_1 >= -35196i), ~arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -546f) * _wgslsmith_f_op_f32(max(-598f, -269f)))));
    return arg_3.a;
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    let var_0 = _wgslsmith_clamp_vec2_u32(arg_1, vec2<u32>(~(global0[_wgslsmith_index_u32(0u, 5u)] ^ ~1u), 0u), arg_1);
    global3 = array<Struct_4, 14>();
    global1 = array<bool, 9>();
    var var_1 = vec2<bool>(all(!(!vec4<bool>(global1[_wgslsmith_index_u32(arg_1.x, 9u)], false, true, global1[_wgslsmith_index_u32(15295u, 9u)]))), all(select(!select(vec2<bool>(true, false), vec2<bool>(false, global1[_wgslsmith_index_u32(arg_3.a, 9u)]), vec2<bool>(global1[_wgslsmith_index_u32(34640u, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)])), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), all(vec3<bool>(true, true, true)))));
    var var_2 = func_2(all(vec4<bool>(any(vec3<bool>(var_1.x, false, global1[_wgslsmith_index_u32(24601u, 9u)])), any(vec2<bool>(false, var_1.x)) || true, true, false)), Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1317f, 934f))), !vec4<bool>(false, true, false, var_1.x), u_input.a.x), vec2<i32>(2147483647i, _wgslsmith_sub_i32(u_input.a.x, min(u_input.a.x, -2147483647i))), Struct_1(global2.a, vec2<f32>(-120f, _wgslsmith_f_op_f32(-2331f + 1162f)), !(!vec4<bool>(true, true, global1[_wgslsmith_index_u32(27593u, 9u)], var_1.x)), 1i), 220f), any(select(select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], true), true), !select(vec3<bool>(false, true, true), vec3<bool>(false, global1[_wgslsmith_index_u32(35076u, 9u)], global1[_wgslsmith_index_u32(var_0.x, 9u)]), vec3<bool>(var_1.x, var_1.x, true)), global1[_wgslsmith_index_u32(~global2.a, 9u)])), vec4<i32>(-1i, min(u_input.a.x, firstLeadingBit(1i)), _wgslsmith_mod_i32(-35189i, ~_wgslsmith_sub_i32(-28735i, u_input.a.x)), _wgslsmith_div_i32(-31942i, 17568i)));
    return 22841i;
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = array<u32, 5>();
    let var_0 = func_5(1u, abs(vec2<u32>(reverseBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a, 5u)], 5u)]), 22642u)), func_4(func_2(!global1[_wgslsmith_index_u32(20549u, 9u)], Struct_2(Struct_1(global0[_wgslsmith_index_u32(global2.a, 5u)], vec2<f32>(660f, arg_0), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), 17986i), -u_input.a, Struct_1(u_input.b, vec2<f32>(arg_0, arg_0), vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 9u)]), u_input.a.x), arg_0), (global1[_wgslsmith_index_u32(0u, 9u)] || global1[_wgslsmith_index_u32(global2.a, 9u)]) != true, _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(15756i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 7724i, -38034i)), vec4<i32>(-2147483647i, -1i, u_input.a.x, 0i) | vec4<i32>(u_input.a.x, -35102i, u_input.a.x, u_input.a.x))), -u_input.a.x, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(12108u, u_input.b, u_input.b), vec3<u32>(global2.a, 70384u, 2234u)) >> (vec3<u32>(~u_input.b, _wgslsmith_clamp_u32(global2.a, 1u, 86587u), 42567u) % vec3<u32>(32u)), Struct_4(Struct_3(firstTrailingBit(u_input.b)))), func_2(!all(select(vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(95274u, 9u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b, 9u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(31292u, 9u)], true, false))), Struct_2(Struct_1(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global2.a, 5u)], 57867u), vec2<f32>(arg_0, arg_0), !vec4<bool>(global1[_wgslsmith_index_u32(80924u, 9u)], true, global1[_wgslsmith_index_u32(global2.a, 9u)], true), u_input.a.x), vec2<i32>(u_input.a.x, abs(u_input.a.x)), Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 9u)], true, true, global1[_wgslsmith_index_u32(0u, 9u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(global2.a, 9u)]), true), ~u_input.a.x), _wgslsmith_f_op_f32(f32(-1f) * -511f)), !any(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 9u)], false, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(103720u, 5u)], 9u)])), _wgslsmith_mod_vec4_i32(~vec4<i32>(20097i, 2147483647i, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(26337i, u_input.a.x, 1i, 2147483647i), vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, -2147483647i, u_input.a.x))) ^ _wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.a.x, 19047i, u_input.a.x, -1072i), vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 0i), global1[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 41275i))));
    let var_1 = -abs(vec4<i32>(~var_0, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, u_input.a.x, var_0, -17827i), vec4<i32>(var_0, -17184i, u_input.a.x, var_0)), _wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(-2147483647i, u_input.a.x)), 36025i));
    global1 = array<bool, 9>();
    global2 = Struct_3(~74086u);
    return Struct_2(Struct_1(_wgslsmith_div_u32(4294967295u, 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1248f) + vec2<f32>(arg_0, -1640f)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-134f, arg_0))), any(vec2<bool>(global1[_wgslsmith_index_u32(global2.a, 9u)], global1[_wgslsmith_index_u32(1u, 9u)])))) + vec2<f32>(-420f, arg_0)), vec4<bool>(select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 1u), vec2<u32>(global0[_wgslsmith_index_u32(global2.a, 5u)], global0[_wgslsmith_index_u32(u_input.b, 5u)])), 9u)], -2147483647i >= var_0, any(vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)]))), global1[_wgslsmith_index_u32(u_input.b, 9u)], ~56211u <= ~u_input.b, !any(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(87906u, 5u)], 9u)], true, true, global1[_wgslsmith_index_u32(90845u, 9u)]))), 56648i), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_1, var_1), -56663i), abs(_wgslsmith_sub_i32(var_1.x, var_0))), -countOneBits(firstLeadingBit(var_1.x))), Struct_1(u_input.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-863f, arg_0))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, arg_0), vec2<f32>(-1631f, arg_0), global1[_wgslsmith_index_u32(10325u, 9u)])))), select(!vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27909u, 5u)], 9u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 9u)], global1[_wgslsmith_index_u32(u_input.b, 9u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 9u)], false, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a, 5u)], 9u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3412u, 5u)], 9u)], global1[_wgslsmith_index_u32(0u, 9u)]), global1[_wgslsmith_index_u32(0u, 9u)]), (u_input.b > global2.a) || !global1[_wgslsmith_index_u32(4294967295u, 9u)]), u_input.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-274f - 1000f), arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0))) - arg_0))));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32) -> u32 {
    global1 = array<bool, 9>();
    global0 = array<u32, 5>();
    let var_0 = _wgslsmith_div_f32(arg_1.d, arg_1.c.b.x);
    global1 = array<bool, 9>();
    global0 = array<u32, 5>();
    return 8375u;
}

fn func_7(arg_0: Struct_1) -> Struct_3 {
    let var_0 = abs(vec2<i32>(arg_0.d >> (_wgslsmith_add_u32(~u_input.b, max(global0[_wgslsmith_index_u32(u_input.b, 5u)], 0u)) % 32u), abs(-1i)));
    let var_1 = true;
    var var_2 = Struct_3(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.a, global2.a, global0[_wgslsmith_index_u32(91617u, 5u)]), ~vec4<u32>(1u, 4294967295u, global2.a, 36970u)), _wgslsmith_clamp_u32(4294967295u, ~firstLeadingBit(1u), u_input.b)));
    var var_3 = Struct_3(func_2(!arg_0.c.x, Struct_2(func_1(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x)).a, ~(-vec2<i32>(-1i, 2147483647i)), arg_0, _wgslsmith_f_op_f32(arg_0.b.x + -1000f)), global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(arg_0.a, var_2.a) << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a, var_2.a, arg_0.a), vec3<u32>(4294967295u, 50406u, var_2.a)) % 32u)), 9u)], vec4<i32>(2147483647i, countOneBits(var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.x, -1i, arg_0.d), vec4<i32>(var_0.x, 31845i, 55705i, u_input.a.x)), func_1(arg_0.b.x).b.x) ^ _wgslsmith_sub_vec4_i32(max(vec4<i32>(var_0.x, var_0.x, arg_0.d, var_0.x), vec4<i32>(arg_0.d, -2147483647i, 20120i, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.d, var_0.x, arg_0.d, u_input.a.x), vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, -32634i)))).a);
    global1 = array<bool, 9>();
    return func_2(4294967295u == _wgslsmith_dot_vec4_u32(reverseBits(abs(vec4<u32>(4294967295u, 0u, 1u, global2.a))), vec4<u32>(var_3.a, 1u, arg_0.a, _wgslsmith_mult_u32(0u, 35341u))), Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(812f, -769f)))).c, vec2<i32>(~(16973i & u_input.a.x), arg_0.d), Struct_1(4294967295u, vec2<f32>(arg_0.b.x, -107f), vec4<bool>(true, select(var_1, global1[_wgslsmith_index_u32(arg_0.a, 9u)], true), true, true), 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -665f)), true, ~(~countOneBits(vec4<i32>(u_input.a.x, arg_0.d, 2147483647i, u_input.a.x) & vec4<i32>(u_input.a.x, arg_0.d, var_0.x, arg_0.d))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_u32(0u, 100463u);
    var var_1 = func_7(Struct_1(u_input.b ^ func_6(vec3<u32>(global2.a, global2.a, 0u) | vec3<u32>(38935u, 9227u, 15172u), func_1(-552f), ~1i), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, -763f), 1281f)), _wgslsmith_f_op_f32(-181f + 1260f)), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 9u)], global1[_wgslsmith_index_u32(24015u, 9u)], true), countOneBits(-_wgslsmith_add_i32(2147483647i, u_input.a.x))));
    var var_2 = 1411f;
    global3 = array<Struct_4, 14>();
    var var_3 = vec3<u32>(u_input.b, 4294967295u, 0u);
    var var_4 = var_3.x;
    let var_5 = func_4(func_7(func_1(-921f).c), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(u_input.a.x, u_input.a.x, 19860i)), _wgslsmith_mult_vec3_i32(max(vec3<i32>(421i, 15212i, u_input.a.x), max(vec3<i32>(-23517i, u_input.a.x, u_input.a.x), vec3<i32>(0i, -4577i, -1i))), _wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 1i, -1i)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -17631i, u_input.a.x), vec3<i32>(67341i, 17276i, u_input.a.x))))), vec3<u32>(25010u, u_input.b, ~0u), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(82296u, var_1.a, 4294967295u, 60212u), _wgslsmith_mult_vec4_u32(vec4<u32>(21080u, var_3.x, 37109u, 121508u), vec4<u32>(4294967295u, 12304u, 2331u, 2844u))), countOneBits(vec4<u32>(0u, 88550u, global2.a, var_3.x))), ~_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(34016u, global0[_wgslsmith_index_u32(29364u, 5u)], 4294967295u, 52545u)), firstLeadingBit(vec4<u32>(58946u, 19006u, 15667u, u_input.b)))), 14u)]);
    var_2 = _wgslsmith_f_op_f32(-429f - 630f);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), vec2<i32>(u_input.a.x, -7244i))));
}

