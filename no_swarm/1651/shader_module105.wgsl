struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<bool, 6>;

var<private> global2: array<vec2<f32>, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = min(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x)), vec3<i32>(u_input.a.x, -1i, -(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) | (u_input.a.x >> (1u % 32u)))));
    global1 = array<bool, 6>();
    var var_1 = global0.x;
    var var_2 = arg_0;
    global1 = array<bool, 6>();
    return select(select(vec4<bool>(false, all(!vec3<bool>(false, global1[_wgslsmith_index_u32(70279u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)])), all(select(vec3<bool>(true, global1[_wgslsmith_index_u32(38059u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)]), vec3<bool>(false, false, global0.x), vec3<bool>(true, false, false))), true), vec4<bool>(all(!global0.zy), select(true, 1i != u_input.a.x, false), global0.x, global0.x & !global0.x), !vec4<bool>(global1[_wgslsmith_index_u32(13881u, 6u)] & global0.x, true, arg_0.x < 2744f, false)), !vec4<bool>(false, true, all(select(vec2<bool>(global1[_wgslsmith_index_u32(26545u, 6u)], false), vec2<bool>(false, global0.x), global0.xy)), true), vec4<bool>(!all(select(global0.xy, global0.yx, global0.yx)), all(select(!vec3<bool>(true, global0.x, false), vec3<bool>(global1[_wgslsmith_index_u32(20133u, 6u)], global0.x, false), true || global0.x)), (select(global1[_wgslsmith_index_u32(57321u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], global0.x) == all(vec4<bool>(false, global1[_wgslsmith_index_u32(64316u, 6u)], true, global0.x))) == true, false));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = Struct_3(!(!(var_0 | true)), 143f, Struct_1(select(!vec3<bool>(var_0, false, false), !select(arg_1.xzy, vec3<bool>(false, true, arg_1.x), arg_1.yzx), !(arg_0.x == -578f))));
    let var_2 = u_input.a.x;
    let var_3 = Struct_2(Struct_1(vec3<bool>(true, false, any(!vec3<bool>(arg_1.x, false, true)))), arg_2.yz, var_1.c);
    let var_4 = Struct_4(true, select(arg_1, !func_3(_wgslsmith_f_op_vec4_f32(trunc(arg_0))), arg_1), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), -u_input.a >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), _wgslsmith_sub_i32(~(-2147483647i) & var_2, -1i), -26454i, arg_2.x));
    return Struct_1(!vec3<bool>(false, var_0, var_3.a.a.x));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = arg_1.a.x;
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-297f, _wgslsmith_f_op_f32(307f * -816f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1360f))) * -230f)));
    let var_2 = ~firstLeadingBit(0u);
    let var_3 = Struct_2(arg_1, -vec2<i32>(reverseBits(arg_2), arg_2) | vec2<i32>(abs(_wgslsmith_dot_vec3_i32(arg_0.c.wzw, vec3<i32>(0i, 1i, 0i))), firstLeadingBit(_wgslsmith_add_i32(24346i, 13918i))), arg_1);
    let var_4 = false;
    return 1i >> (_wgslsmith_mult_u32(22140u, var_2) % 32u);
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<f32>) -> vec3<i32> {
    let var_0 = Struct_4(global0.x, select(vec4<bool>(global1[_wgslsmith_index_u32(select(~1u, arg_0.x, all(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 6u)], true, global1[_wgslsmith_index_u32(arg_0.x, 6u)]))), 6u)], arg_1 >= arg_1, false, all(func_3(vec4<f32>(-682f, arg_2.x, 833f, arg_2.x)).zy)), !(!vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 6u)], false, global1[_wgslsmith_index_u32(arg_0.x, 6u)])), (_wgslsmith_mult_i32(arg_1, 5392i) == abs(arg_1)) | true), reverseBits(vec4<i32>(-43328i, ~_wgslsmith_mod_i32(arg_1, u_input.a.x), countOneBits(firstLeadingBit(1i)), -(~u_input.a.x))));
    var var_1 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1212f, arg_2.x, arg_2.x, arg_2.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(251f, -313f, arg_2.x, arg_2.x) - vec4<f32>(arg_2.x, 773f, arg_2.x, 531f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 336f, arg_2.x, arg_2.x)))), !vec4<bool>(!(!global1[_wgslsmith_index_u32(arg_0.x, 6u)]), false, true, _wgslsmith_mult_i32(arg_1, 21144i) > var_0.c.x), _wgslsmith_mult_vec3_i32(var_0.c.ywz, _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.c.www, var_0.c.yzw), select(vec3<i32>(34223i, u_input.a.x, u_input.a.x), var_0.c.zwz, var_0.b.zwy)) << (select(vec3<u32>(arg_0.x, 0u, 0u) << (vec3<u32>(arg_0.x, arg_0.x, 4294967295u) % vec3<u32>(32u)), vec3<u32>(arg_0.x, arg_0.x, arg_0.x), select(vec3<bool>(true, true, global0.x), var_0.b.xww, vec3<bool>(global0.x, var_0.b.x, var_0.b.x))) % vec3<u32>(32u))));
    global1 = array<bool, 6>();
    global2 = array<vec2<f32>, 17>();
    global2 = array<vec2<f32>, 17>();
    return -(~vec3<i32>(-min(u_input.a.x, arg_1), -60916i, 1i));
}

fn func_1(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>, arg_3: vec3<f32>) -> vec2<bool> {
    var var_0 = -func_5(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2.x, 0u << (0u % 32u)), arg_2.yz), func_4(Struct_4(!arg_0.a, !vec4<bool>(false, global0.x, true, true), ~vec4<i32>(2147483647i, u_input.a.x, 0i, u_input.a.x)), func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, arg_0.b, arg_3.x, arg_1)), !vec4<bool>(global0.x, global1[_wgslsmith_index_u32(4294967295u, 6u)], false, false), vec3<i32>(u_input.a.x, 20132i, -55963i)), u_input.a.x), arg_3.xy);
    let var_1 = Struct_2(func_2(vec4<f32>(238f, 1f, _wgslsmith_f_op_f32(min(-856f, arg_3.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_3.x))))), vec4<bool>(true, !(!arg_0.c.a.x), global1[_wgslsmith_index_u32(countOneBits(arg_2.x) >> (~arg_2.x % 32u), 6u)], false), firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 1i, -2147483647i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, 42391i, 0i)), _wgslsmith_div_i32(u_input.a.x, u_input.a.x), u_input.a.x))), ~(-var_0.zz), Struct_1(arg_0.c.a));
    var var_2 = ~vec4<i32>(countOneBits(u_input.a.x), var_1.b.x, _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(var_1.b.x, u_input.a.x, -14762i)) << (~vec3<u32>(10212u, arg_2.x, 0u) % vec3<u32>(32u)), vec3<i32>(var_0.x, -34733i, var_0.x)), var_1.b.x);
    global1 = array<bool, 6>();
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1104f), _wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(min(-622f, arg_1)), -1996f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(254f * arg_1) + 1183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-125f))), _wgslsmith_f_op_f32(arg_3.x + -577f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b, -468f, -593f, -1108f)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.x, arg_0.b, -664f, arg_0.b))), all(vec4<bool>(global0.x, var_1.a.a.x, var_1.a.a.x, true)))), !vec4<bool>(false & arg_0.a, any(vec2<bool>(global0.x, false)), any(vec4<bool>(false, false, false, false)), var_1.c.a.x == arg_0.a))));
    return var_1.c.a.zx;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 6>();
    var var_0 = Struct_1(!vec3<bool>(any(func_1(Struct_3(global0.x, -959f, Struct_1(vec3<bool>(global0.x, true, global1[_wgslsmith_index_u32(20923u, 6u)]))), 1000f, vec4<u32>(51628u, 123924u, 93062u, 1u), vec3<f32>(-323f, -753f, 1861f))), _wgslsmith_f_op_f32(round(576f)) < _wgslsmith_f_op_f32(ceil(-250f)), global0.x));
    global0 = !(!var_0.a);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-216f * -111f), _wgslsmith_f_op_f32(ceil(527f))))) - -612f);
    let var_2 = select(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(786f, 499f, -624f, -417f))), vec4<f32>(1160f, -1000f, -584f, 1084f))))).x, !((0i > _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -58602i), u_input.a)) | true), var_0.a.x | global1[_wgslsmith_index_u32(1u, 6u)]);
    global2 = array<vec2<f32>, 17>();
    global1 = array<bool, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(1225f, 7361u, _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u)), max(abs(vec4<u32>(35375u, 0u, 36904u, 0u)), ~vec4<u32>(1u, 0u, 6278u, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 142f, 1184f, 1196f)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -952f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(983f))), _wgslsmith_f_op_f32(trunc(414f)), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(600f - 385f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1608f))))))));
}

