struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 31> = array<vec2<u32>, 31>(vec2<u32>(4294967295u, 59014u), vec2<u32>(24787u, 1u), vec2<u32>(62180u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(55724u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 9997u), vec2<u32>(352u, 19192u), vec2<u32>(4294967295u, 10969u), vec2<u32>(53933u, 43870u), vec2<u32>(94697u, 16043u), vec2<u32>(73065u, 21702u), vec2<u32>(49472u, 1u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(40473u, 44982u), vec2<u32>(0u, 17234u), vec2<u32>(1u, 0u), vec2<u32>(0u, 46620u), vec2<u32>(79778u, 50446u), vec2<u32>(32825u, 0u), vec2<u32>(0u, 137543u), vec2<u32>(0u, 0u), vec2<u32>(0u, 14672u), vec2<u32>(49970u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(11298u, 0u), vec2<u32>(4294967295u, 97771u), vec2<u32>(26795u, 4294967295u), vec2<u32>(0u, 8491u));

var<private> global2: array<Struct_2, 27>;

var<private> global3: u32;

var<private> global4: array<vec4<bool>, 27> = array<vec4<bool>, 27>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global2 = array<Struct_2, 27>();
    var var_0 = -34800i;
    var_0 = 27662i;
    let var_1 = global0.a;
    let var_2 = false;
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x)) * _wgslsmith_f_op_f32(floor(arg_0.a))))), ~0u, false, any(vec3<bool>(true, true | (global0.b <= global0.b), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-616f, arg_0.a, -863f, _wgslsmith_f_op_f32(-global0.a)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -403f, -925f, -1689f) * vec4<f32>(arg_0.b, 672f, -1000f, 495f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.b, -410f, global0.e.x))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(-1425f, 0u | select(~(~u_input.c.x), 4294967295u, arg_3.x), !all(vec4<bool>(true, true, true, true)), arg_0.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.e, arg_0.e))));
    var var_0 = arg_0;
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.e.x))), _wgslsmith_f_op_f32(-307f + -1530f)))), 309f, _wgslsmith_div_i32(u_input.a, -select(arg_2.c, i32(-1i) * -2147483647i, true)));
    let var_2 = func_2(global2[_wgslsmith_index_u32(~4294967295u ^ (_wgslsmith_dot_vec3_u32(u_input.c.zwx & u_input.c.ywx, max(vec3<u32>(2077u, 15645u, 37953u), vec3<u32>(var_0.b, 4294967295u, 4294967295u))) | 1u), 27u)]);
    let var_3 = abs(countOneBits(firstTrailingBit(u_input.e)) | u_input.e) & u_input.e;
    return var_2;
}

fn func_1() -> f32 {
    let var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, global0.b, u_input.d.x) ^ u_input.c.zwx, _wgslsmith_div_vec3_u32(vec3<u32>(11055u, 4294967295u, global0.b), u_input.c.xzy)), vec3<u32>(global0.b, ~4741u, _wgslsmith_mod_u32(u_input.b, u_input.b))), ~u_input.c.xyx);
    var var_1 = _wgslsmith_f_op_f32(round(308f));
    var var_2 = countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.e.zx, vec2<i32>(_wgslsmith_mod_i32(u_input.e.x, u_input.e.x), u_input.a)), u_input.e.zz));
    var var_3 = 49286i <= u_input.e.x;
    global0 = func_3(func_2(Struct_2(global0.e.x, -411f, 39695i)), ~1i, Struct_2(global0.a, _wgslsmith_f_op_f32(-global0.e.x), abs(min(0i, u_input.e.x >> (30524u % 32u)))), select(vec2<bool>(true, func_2(global2[_wgslsmith_index_u32(51683u, 27u)]).c), !(!(!vec2<bool>(global0.c, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * 1000f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    return _wgslsmith_f_op_f32(global0.a - 306f);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>, arg_3: vec2<bool>) -> StorageBuffer {
    global1 = array<vec2<u32>, 31>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(arg_0.b)), 816f, firstLeadingBit(min(6578i, arg_0.c)));
    global0 = func_2(Struct_2(var_0.a, 345f, firstTrailingBit(min(i32(-1i) * -60789i, u_input.a))));
    let var_1 = func_2(Struct_2(_wgslsmith_f_op_f32(sign(arg_0.b)), global0.e.x, 9664i)).e.yzz;
    global1 = array<vec2<u32>, 31>();
    return StorageBuffer(arg_1, vec3<f32>(848f, arg_0.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(557f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.e.x))), vec3<f32>(_wgslsmith_f_op_f32(-func_3(Struct_1(var_0.a, 4097u, global0.c, true, vec4<f32>(global0.a, 1054f, var_1.x, 1000f)), arg_0.c, Struct_2(-834f, -1478f, -1782i), vec2<bool>(false, true)).a), 1710f, var_0.b), -reverseBits(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0.c, u_input.a), vec2<i32>(var_0.c, var_0.c))) | vec2<i32>(-12135i, ~(-50230i)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_2(298f, _wgslsmith_f_op_f32(func_1()), 44477i & _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 51464i, u_input.a), ~u_input.e)), 1u, max(vec3<u32>(~u_input.b, ~1u | (1u | u_input.d.x), 55562u), vec3<u32>(_wgslsmith_mod_u32(u_input.b, 1u), ~58618u, u_input.d.x) | reverseBits(min(u_input.c.wzw, vec3<u32>(83665u, u_input.c.x, 0u)))), select(select(!(!vec2<bool>(global0.d, true)), select(vec2<bool>(false, global0.d), !vec2<bool>(global0.d, global0.d), false), vec2<bool>(all(vec2<bool>(false, true)), global0.c)), !vec2<bool>(false != global0.d, all(vec3<bool>(global0.d, global0.c, false))), select(vec2<bool>(true, false), select(!vec2<bool>(global0.d, true), vec2<bool>(false, global0.c), global0.d | true), all(!vec2<bool>(false, global0.d)))));
}

