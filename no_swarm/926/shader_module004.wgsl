struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(28209u, 4294967295u, 0u, 1u, 1u, 53412u, 50391u, 0u, 14679u, 0u, 4294967295u, 30872u, 1u, 13211u, 3950u, 48036u, 1u, 27565u, 23005u, 75008u, 0u, 1u, 29562u, 76685u, 4294967295u, 1u, 0u, 11105u);

var<private> global1: array<vec2<bool>, 4>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: u32, arg_3: Struct_2) -> u32 {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    var var_0 = all(vec4<bool>(u_input.a.x < u_input.b.x, all(vec4<bool>(true, arg_3.e.b, true, all(vec4<bool>(arg_3.a, false, true, arg_0.x)))), false, !arg_3.b));
    var_0 = arg_0.x | arg_0.x;
    let var_1 = arg_3.e.c.x;
    return max(countOneBits(~(~(arg_3.e.a ^ arg_3.e.a))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_3.e.a, arg_1.x), 28u)]);
}

fn func_2() -> vec3<f32> {
    global0 = array<u32, 28>();
    global0 = array<u32, 28>();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec4_u32(~(~max(vec4<u32>(78425u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(96464u, 28u)], 28u)], 22879u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18724u, 28u)], 28u)]), vec4<u32>(1u, 4294967295u, 96638u, 2735u))), select(vec4<u32>(select(20668u, global0[_wgslsmith_index_u32(2292u, 28u)], false), ~53722u, global0[_wgslsmith_index_u32(func_3(vec3<bool>(false, true, true), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30217u, 28u)], 28u)], 28u)], 1u, 0u), 0u, Struct_2(false, false, u_input.b.x, vec3<bool>(true, false, false), Struct_1(1u, false, vec4<f32>(1000f, -2185f, 1496f, 1170f)))), 28u)], func_3(vec3<bool>(false, true, false), vec3<u32>(34597u, 4294967295u, global0[_wgslsmith_index_u32(1u, 28u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7274u, 28u)], 28u)], Struct_2(false, true, -1i, vec3<bool>(true, true, true), Struct_1(global0[_wgslsmith_index_u32(998u, 28u)], true, vec4<f32>(1000f, 131f, -277f, 2078f))))), ~firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(24152u, 28u)], 19870u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)])), vec4<bool>(any(vec3<bool>(true, true, false)), true, true, true))), ~((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)] << (global0[_wgslsmith_index_u32(0u, 28u)] % 32u)) | _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(18366u, 28u)])) & func_3(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), ~vec3<u32>(557u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(1u, 28u)]) >> (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)], 0u, 0u) % vec3<u32>(32u)), 1u, Struct_2(true, select(true, true, true), u_input.b.x ^ u_input.a.x, vec3<bool>(true, true, true), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2964u, 28u)], 28u)], false, vec4<f32>(1477f, 1449f, 350f, -418f)))), 89951u);
    let var_1 = abs(abs(vec2<i32>(i32(-1i) * -u_input.a.x, u_input.b.x)));
    let var_2 = Struct_3(Struct_2(false, any(select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(var_0.x, 4u)], false)) | false, _wgslsmith_mult_i32(-14034i, -var_1.x), select(vec3<bool>(false, true, true), vec3<bool>(all(vec3<bool>(true, true, false)), true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), Struct_1(global0[_wgslsmith_index_u32(var_0.x, 28u)] | var_0.x, true, vec4<f32>(-230f, _wgslsmith_f_op_f32(abs(488f)), _wgslsmith_f_op_f32(626f * 352f), _wgslsmith_div_f32(-133f, 780f)))), Struct_2(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, var_0.x), 28u)], 28u)], 28u)] < var_0.x, (0i > ~u_input.a.x) & true, u_input.a.x, !vec3<bool>(false, true, all(vec4<bool>(false, true, true, true))), Struct_1(~_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54662u, 28u)], 28u)]), true, vec4<f32>(-513f, _wgslsmith_f_op_f32(f32(-1f) * -444f), 516f, _wgslsmith_f_op_f32(-351f * 1000f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1516f, -413f, 963f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1286f, -2732f, 1238f)))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f))) * vec3<f32>(-385f, 335f, _wgslsmith_f_op_f32(f32(-1f) * -1461f)))));
    return vec3<f32>(-196f, _wgslsmith_f_op_f32(round(var_2.c.x)), 678f);
}

fn func_1(arg_0: Struct_4) -> Struct_5 {
    global1 = array<vec2<bool>, 4>();
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-322f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(855f, -843f)) * _wgslsmith_f_op_f32(select(-380f, -1000f, false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -1087f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -562f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1383f + 1783f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(func_2());
    global1 = array<vec2<bool>, 4>();
    let var_2 = func_3(arg_0.a.yxy, _wgslsmith_mult_vec3_u32(firstLeadingBit(~firstTrailingBit(vec3<u32>(global0[_wgslsmith_index_u32(58219u, 28u)], 4294967295u, 0u))), vec3<u32>(_wgslsmith_mult_u32(66095u, 1u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22665u, 28u)], 28u)], 28u)], 1u), global0[_wgslsmith_index_u32(abs(7740u), 28u)]) << (_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)], 28u)], 8216u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34612u, 28u)], 28u)])), vec3<u32>(global0[_wgslsmith_index_u32(90907u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(52511u, 28u)], 28u)], 28u)], 0u)) % vec3<u32>(32u))), 4294967295u & _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], global0[_wgslsmith_index_u32(50022u, 28u)], 0u) & vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 1u, global0[_wgslsmith_index_u32(29830u, 28u)], 19428u), abs(vec4<u32>(123771u, 0u, global0[_wgslsmith_index_u32(35230u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)], 28u)]))), ~vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], 28u)], 28u)], global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13095u, 28u)], 28u)], 28u)])), Struct_2(true, any(global1[_wgslsmith_index_u32(~select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 1u, arg_0.a.x), 4u)]), arg_0.b.x, !select(select(vec3<bool>(arg_0.a.x, true, false), arg_0.a.zwy, vec3<bool>(false, true, false)), arg_0.a.zyx, select(arg_0.a.xwx, vec3<bool>(arg_0.a.x, arg_0.a.x, true), false)), Struct_1(_wgslsmith_mult_u32(abs(995u), ~global0[_wgslsmith_index_u32(4294967295u, 28u)]), arg_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(896f, var_1.x, var_0.x, var_0.x))))));
    return Struct_5(Struct_2(false, arg_0.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.b.x, -75024i, u_input.a.x, arg_0.c), arg_0.b & vec4<i32>(0i, 29194i, arg_0.c, 0i)), vec4<i32>(arg_0.c, _wgslsmith_div_i32(arg_0.c, arg_0.b.x), 1i, firstTrailingBit(-57922i))), !arg_0.a.zzx, Struct_1(~firstTrailingBit(65568u), any(!vec4<bool>(arg_0.a.x, true, false, false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_0.x, 2477f, var_0.x)))))), Struct_4(arg_0.a, u_input.a, _wgslsmith_dot_vec2_i32(arg_0.b.yy, -vec2<i32>(arg_0.b.x, -7280i))));
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_5, arg_3: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_i32(-(abs(arg_3.b) >> (countOneBits(~vec4<u32>(1u, 1u, 21738u, 7182u)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -arg_2.b.b.zy, -firstTrailingBit(vec2<i32>(3100i, -6924i))), u_input.b.x, -(reverseBits(-1i) ^ ~arg_2.b.c), -2147483647i));
    let var_1 = firstLeadingBit(abs(~(~vec2<u32>(global0[_wgslsmith_index_u32(1u, 28u)], arg_1))));
    global0 = array<u32, 28>();
    global1 = array<vec2<bool>, 4>();
    let var_2 = true;
    return Struct_1(~(_wgslsmith_mod_u32(~var_1.x, countOneBits(arg_1)) ^ _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(var_1.x, 1u), 12957u)), var_2, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2.a.e.c.x)), _wgslsmith_f_op_f32(737f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -367f), _wgslsmith_f_op_f32(889f * arg_2.a.e.c.x))))));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_1 {
    let var_0 = func_1(arg_2).b;
    let var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(abs(firstLeadingBit(vec4<u32>(arg_1.a, 1u, global0[_wgslsmith_index_u32(arg_1.a, 28u)], 40406u))), ~_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a, global0[_wgslsmith_index_u32(4294967295u, 28u)], 65180u, arg_1.a), vec4<u32>(1u, 3939u, 0u, 12300u)), false), ~(~vec4<u32>(global0[_wgslsmith_index_u32(arg_1.a, 28u)], 14941u, 1u, 19747u)) << (~vec4<u32>(arg_1.a, arg_1.a, 1u, 1u) % vec4<u32>(32u))), ~select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_1.a, 28u)], 1u, 4860u, global0[_wgslsmith_index_u32(6897u, 28u)]), vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 28u)], arg_1.a, 20322u)), ~vec4<u32>(0u, arg_1.a, global0[_wgslsmith_index_u32(15701u, 28u)], 4294967295u), func_1(Struct_4(vec4<bool>(var_0.a.x, false, false, var_0.a.x), arg_2.b, var_0.b.x)).b.a) | ~_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(0u, 28u)], 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], arg_1.a), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(34708u, 28u)], global0[_wgslsmith_index_u32(0u, 28u)], 4294967295u), vec4<u32>(0u, arg_1.a, arg_1.a, 4294967295u)), ~vec4<u32>(64186u, 25699u, 1u, arg_1.a)));
    var var_2 = u_input.b.xx;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.c.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_1(var_0).a.e.c.x), _wgslsmith_f_op_f32(-1f))) - _wgslsmith_f_op_f32(633f + _wgslsmith_f_op_f32(760f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1232f))))));
    global1 = array<vec2<bool>, 4>();
    return Struct_1(arg_1.a, var_3 >= arg_1.c.x, arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, 5614i & u_input.b.x, 1i >> (global0[_wgslsmith_index_u32(64738u, 28u)] % 32u)), ~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, -25913i, u_input.b.x), u_input.b & u_input.b)), func_4(!(!all(vec3<bool>(true, false, false))), global0[_wgslsmith_index_u32(0u, 28u)], func_1(Struct_4(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), false), vec4<i32>(u_input.a.x, 1i, u_input.a.x, -1i), u_input.b.x)), Struct_4(func_1(Struct_4(vec4<bool>(false, false, false, false), vec4<i32>(-67348i, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x)).b.a, ~(u_input.a ^ u_input.a), -1i)), func_1(Struct_4(vec4<bool>(true, true, true, true), select(vec4<i32>(u_input.b.x, u_input.a.x, -2147483647i, u_input.a.x), firstTrailingBit(u_input.a), vec4<bool>(true, true, true, true)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-46944i, u_input.b.x, 1i, u_input.a.x), vec4<i32>(u_input.b.x, 0i, -105831i, -1i)), func_1(Struct_4(vec4<bool>(true, true, true, false), u_input.a, -2147483647i)).b.c))).b);
    let var_1 = _wgslsmith_f_op_vec4_f32(-var_0.c);
    var var_2 = func_1(Struct_4(func_1(Struct_4(vec4<bool>(true, var_0.b, true, false), ~u_input.a, u_input.b.x)).b.a, u_input.a, -2147483647i));
    var var_3 = -2147483647i;
    global0 = array<u32, 28>();
    var var_4 = 396f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(func_3(select(var_2.b.a.yxz, vec3<bool>(false, var_0.b, true), true), abs(vec3<u32>(var_0.a, var_2.a.e.a, 1u)), ~4294967295u, func_1(var_2.b).a), ~0u, func_4(!var_2.a.a, ~var_0.a, Struct_5(var_2.a, Struct_4(var_2.b.a, vec4<i32>(-69600i, u_input.a.x, var_2.b.c, -7156i), var_2.b.b.x)), var_2.b).a) & 0u, _wgslsmith_add_i32(select(i32(-1i) * -u_input.b.x, max(u_input.a.x, 1i) << (var_0.a % 32u), -var_2.a.c <= _wgslsmith_clamp_i32(u_input.a.x, -4964i, var_2.a.c)), ~_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_mult_i32(0i, var_2.b.c))), global0[_wgslsmith_index_u32(~var_0.a, 28u)], -160f, vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a.e.a, 28u)], 28u)], 28u)], 15898u, 1u), ~vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.a, 28u)], 28u)], 45136u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(var_0.a, 28u)], var_0.a, var_0.a), vec3<u32>(var_2.a.e.a, 11777u, 4294967295u) >> (vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2.a.e.a, 28u)], 28u)], 4294967295u) % vec3<u32>(32u)))), abs(14309u)));
}

