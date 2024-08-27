struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 17> = array<bool, 17>(true, true, true, true, true, false, true, true, false, true, false, false, true, false, false, false, false);

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_2, 4>;

var<private> global3: array<Struct_4, 30>;

var<private> global4: Struct_4;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> i32 {
    global1 = !vec2<bool>(any(vec2<bool>(!arg_3, arg_3)), any(vec3<bool>(true, any(vec4<bool>(global1.x, true, false, false)), all(vec2<bool>(false, true)))));
    let var_0 = Struct_5(firstTrailingBit(~(vec2<u32>(arg_2, global4.d.a) | vec2<u32>(arg_2, 0u))) << (firstLeadingBit(~(~vec2<u32>(arg_2, 59754u))) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(arg_1))))));
    let var_1 = Struct_5(var_0.a, vec4<f32>(544f, 1081f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(938f, _wgslsmith_f_op_f32(1467f + arg_1.x)))), global4.d.e));
    let var_2 = !(!select(!(!vec3<bool>(true, false, global1.x)), vec3<bool>(arg_0, global1.x && global1.x, any(vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.a.x, 17u)]))), arg_3));
    global2 = array<Struct_2, 4>();
    return abs(max(min(~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b), _wgslsmith_sub_i32(-37428i, u_input.b.x)), 23179i));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_4) -> vec4<u32> {
    let var_0 = global0[_wgslsmith_index_u32(arg_0.d.a, 17u)];
    var var_1 = ~func_3(global0[_wgslsmith_index_u32(~arg_1.d.a, 17u)], arg_1.a, 1u, true);
    var var_2 = _wgslsmith_f_op_f32(-arg_1.a.x) == -789f;
    let var_3 = -(~firstTrailingBit(~(u_input.a.yz >> (vec2<u32>(global4.d.a, 22883u) % vec2<u32>(32u)))));
    var var_4 = min(~select(~0i >> (arg_1.d.a % 32u), _wgslsmith_mult_i32(11350i >> (1u % 32u), var_3.x), ~arg_1.d.a >= 45416u), min(-_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(arg_0.d.c.a, var_3.x, global4.d.d.a, global4.d.c.a)), _wgslsmith_dot_vec2_i32(var_3, vec2<i32>(14227i, u_input.a.x))), abs(abs(~(-1i)))));
    return vec4<u32>(global4.d.a, 2058u, arg_0.d.a >> (~1u % 32u), u_input.c);
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(countOneBits(~(~1u)), 30u)];
    global3 = array<Struct_4, 30>();
    global4 = Struct_4(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2387f))), var_0.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global4.d.e * 2191f)))))), -993f, 139f, Struct_3(~_wgslsmith_mult_u32(max(8216u, 38637u), global4.d.a), vec2<f32>(-1109f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-950f - var_0.b))), var_0.e, Struct_1(-(2147483647i >> (global4.d.a % 32u))), _wgslsmith_f_op_f32(-2836f + 310f)), global4.e);
    global1 = vec2<bool>(firstLeadingBit(_wgslsmith_add_u32(66496u, ~u_input.c)) >= global4.d.a, true);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(min(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(244f, -814f, var_0.a.x, -1605f))))), _wgslsmith_f_op_f32(global4.a.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-210f, -357f)) - _wgslsmith_f_op_f32(global4.d.b.x * -1153f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(368f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(619f))))), var_0.b, all(vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 17u)], !global1.x, global0[_wgslsmith_index_u32(u_input.c, 17u)])))), Struct_3(4294967295u, vec2<f32>(-494f, -319f), Struct_1(~(1i >> (arg_0.x % 32u))), global4.d.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 933f) * _wgslsmith_div_f32(var_0.a.x, -1096f)))), Struct_1(var_0.e.a));
    return -614f;
}

fn func_1() -> vec2<u32> {
    global4 = Struct_4(vec4<f32>(-2129f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(~vec3<u32>(5207u, global4.d.a, 13746u), func_2(Struct_4(vec4<f32>(global4.b, 1000f, 1603f, global4.d.e), 988f, global4.c, Struct_3(19394u, global4.d.b, Struct_1(global4.d.d.a), global4.e, 168f), Struct_1(global4.e.a)), global3[_wgslsmith_index_u32(global4.d.a, 30u)]))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.b), -480f))), 703f, global4.d.e), global4.d.b.x, 1000f, Struct_3(min(global4.d.a, _wgslsmith_add_u32(u_input.c ^ u_input.c, u_input.c)), global4.d.b, Struct_1(2147483647i), global4.d.d, global4.b), global4.d.d);
    let var_0 = global4.d.c;
    return func_2(global3[_wgslsmith_index_u32(~(~0u), 30u)], global3[_wgslsmith_index_u32(u_input.c, 30u)]).xy;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 30>();
    var var_0 = Struct_2(func_1() | firstLeadingBit(~vec2<u32>(global4.d.a, 1u) | ~vec2<u32>(1u, u_input.c)));
    let var_1 = Struct_2(var_0.a);
    var var_2 = global3[_wgslsmith_index_u32(22108u, 30u)];
    let var_3 = firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(~global4.d.d.a, _wgslsmith_mod_i32(-67988i, 1i), global4.d.d.a, firstTrailingBit(8881i)), firstLeadingBit(u_input.b))) ^ vec4<i32>(reverseBits(countOneBits(-2147483647i & var_2.d.c.a)), _wgslsmith_mod_i32(var_2.d.c.a, 2147483647i), select(var_2.d.d.a, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1988i, var_2.e.a, -4208i), u_input.b.yxw), true), select(24440i, -_wgslsmith_div_i32(var_2.d.d.a, u_input.b.x), any(vec3<bool>(true, true, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(Struct_4(vec4<f32>(_wgslsmith_f_op_f32(abs(global4.d.e)), _wgslsmith_f_op_f32(round(-1298f)), _wgslsmith_f_op_f32(trunc(-929f)), _wgslsmith_div_f32(var_2.a.x, global4.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<u32>(var_0.a.x, 1u, 90574u), vec4<u32>(u_input.c, 74292u, var_2.d.a, var_2.d.a)))), global4.c, Struct_3(1u, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.c, global4.c), global4.a.wx)), var_2.d.c, global4.e, _wgslsmith_div_f32(global4.d.e, var_2.a.x)), global4.e), global3[_wgslsmith_index_u32(~abs(reverseBits(var_0.a.x)), 30u)]).x, vec2<u32>(~max(4294967295u, max(var_2.d.a, 4294967295u)), ((var_2.d.a ^ global4.d.a) << (16611u % 32u)) >> (abs(~1u) % 32u)), var_3.ww, _wgslsmith_mult_vec4_u32(select((vec4<u32>(14641u, 36162u, var_1.a.x, var_0.a.x) << (vec4<u32>(4294967295u, var_0.a.x, var_0.a.x, var_0.a.x) % vec4<u32>(32u))) ^ (vec4<u32>(var_2.d.a, var_2.d.a, var_0.a.x, global4.d.a) >> (vec4<u32>(var_1.a.x, global4.d.a, 0u, 1u) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, var_0.a.x, 45658u, 61959u), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, u_input.c, var_2.d.a, 37789u), vec4<u32>(2431u, 7625u, 8828u, 29374u)), vec4<u32>(global4.d.a, var_2.d.a, 74528u, u_input.c) ^ vec4<u32>(var_1.a.x, 4294967295u, var_0.a.x, var_0.a.x)), select(all(vec3<bool>(global0[_wgslsmith_index_u32(var_1.a.x, 17u)], global1.x, global0[_wgslsmith_index_u32(1u, 17u)])), true, global1.x)), vec4<u32>(abs(func_2(global3[_wgslsmith_index_u32(var_0.a.x, 30u)], Struct_4(var_2.a, -364f, 886f, var_2.d, global4.e)).x), var_0.a.x, var_0.a.x & (var_2.d.a << (90997u % 32u)), ~countOneBits(0u))));
}

