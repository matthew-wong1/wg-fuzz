struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, i32(-2147483648), 0i, -40772i);

var<private> global1: vec3<u32>;

var<private> global2: Struct_1;

var<private> global3: array<f32, 6>;

var<private> global4: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(231f, -1673f, -1053f, -723f), vec4<f32>(-102f, 813f, -1471f, 769f), vec4<f32>(-349f, -1128f, 365f, 451f), vec4<f32>(-618f, -154f, -1551f, 1127f), vec4<f32>(-1647f, -1426f, 398f, -834f), vec4<f32>(-351f, 1000f, -252f, 682f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32) -> vec2<f32> {
    var var_0 = Struct_1(vec4<u32>(~(~_wgslsmith_sub_u32(122007u, global2.b.x)), global1.x, ~countOneBits(u_input.b), _wgslsmith_clamp_u32(17520u, _wgslsmith_mod_u32(6880u, global1.x & 0u), ~_wgslsmith_add_u32(4102u, u_input.b))), firstTrailingBit(abs(countOneBits(~vec2<u32>(40793u, u_input.b)))), !(!select(!vec4<bool>(global2.c.x, false, true, global2.c.x), global2.c, true)));
    global3 = array<f32, 6>();
    var var_1 = Struct_1(global2.a, global2.b, global2.c);
    global2 = Struct_1(var_1.a, ~countOneBits(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 1641u), global1.zy)), !var_1.c);
    global1 = reverseBits(_wgslsmith_div_vec3_u32(var_0.a.wzy, vec3<u32>(_wgslsmith_div_u32(global1.x & 0u, firstLeadingBit(var_0.a.x)), global2.b.x, min(global2.a.x, max(56132u, global2.b.x)))));
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * 996f) * global3[_wgslsmith_index_u32(0u, 6u)]) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.b.x, 6u)] + 255f), _wgslsmith_f_op_f32(-arg_1))))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-296f, arg_2)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(1u, 6u)]), vec2<f32>(-773f, global3[_wgslsmith_index_u32(51110u, 6u)]))), !var_1.c.xy)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -1000f)))))));
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_3(-254f, global3[_wgslsmith_index_u32(42819u, 6u)], _wgslsmith_f_op_f32(-251f * global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_sub_u32(u_input.b, global1.x)), 6u)])));
    global4 = array<vec4<f32>, 6>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -816f));
    global3 = array<f32, 6>();
    var var_2 = arg_0;
    return vec3<u32>(firstTrailingBit(abs(0u)), ~65546u, ~(~1u));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    global1 = min(global2.a.yxw, ~func_2(Struct_1(vec4<u32>(41522u, 16307u, 4294967295u, arg_1.b.x), vec2<u32>(4294967295u, arg_2.x), vec4<bool>(arg_1.c.x, true, false, true)))) ^ ~arg_1.a.wxw;
    return Struct_1(global2.a, global2.b, !select(arg_1.c, !vec4<bool>(global2.c.x, global2.c.x, false, true), arg_1.c));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_1(global2.c.zzx, func_1(arg_2.c.wwy, Struct_1(countOneBits(vec4<u32>(global2.b.x, 0u, 1u, 1u)) & global2.a, select(max(vec2<u32>(arg_0.x, global1.x), arg_0.zy), max(vec2<u32>(2526u, 1u), vec2<u32>(29261u, 4294967295u)), !global2.c.x), arg_2.c), firstTrailingBit(~global2.a.wx)), ~((vec2<u32>(0u, 25350u) >> (firstLeadingBit(vec2<u32>(24215u, 1u)) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_sub_u32(arg_2.b.x, 1u), arg_0.x >> (0u % 32u)) % vec2<u32>(32u))));
    let var_1 = true;
    global2 = var_0;
    let var_2 = u_input.a;
    global1 = select(vec3<u32>(~0u, global2.b.x, (4294967295u & global2.b.x) << (25878u % 32u)), _wgslsmith_add_vec3_u32(arg_0, ~vec3<u32>(2734u, 0u, var_0.b.x)), any(vec2<bool>(true, true))) >> (abs(firstTrailingBit(min(vec3<u32>(23362u, 37852u, u_input.b), arg_0)) | ~(~global2.a.yxw)) % vec3<u32>(32u));
    return Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(global1.x, u_input.b, arg_0.x, arg_0.x), abs(_wgslsmith_div_vec4_u32(arg_2.a, arg_2.a))), _wgslsmith_add_vec4_u32(select(~vec4<u32>(arg_2.b.x, arg_2.a.x, 1u, global1.x), vec4<u32>(4294967295u, global1.x, 1u, 0u), vec4<bool>(true, false, true, false)), ~vec4<u32>(arg_0.x, arg_0.x, 1u, arg_0.x) | vec4<u32>(4294967295u, 1683u, u_input.b, 4294967295u))), abs(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.a.x, 21668u), 1u), 1u)), vec4<bool>(true, all(vec4<bool>(arg_2.c.x, false, arg_2.c.x, var_0.c.x)) && !arg_2.c.x, !global2.c.x & false, func_1(select(vec3<bool>(false, global2.c.x, global2.c.x), arg_2.c.yyz, global0.x >= var_2.x), Struct_1(arg_2.a, vec2<u32>(18488u, 64886u) & vec2<u32>(arg_0.x, global2.a.x), arg_2.c), vec2<u32>(arg_2.b.x, 1u) << (global1.zx % vec2<u32>(32u))).c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_4(global2.a.zzz, !(!global2.c.xx), func_1(vec3<bool>(_wgslsmith_f_op_f32(floor(464f)) <= _wgslsmith_f_op_f32(1061f - global3[_wgslsmith_index_u32(global1.x, 6u)]), !any(vec3<bool>(global2.c.x, false, global2.c.x)), !(global3[_wgslsmith_index_u32(u_input.b, 6u)] >= global3[_wgslsmith_index_u32(global2.a.x, 6u)])), Struct_1(~(vec4<u32>(1047u, global1.x, 0u, 1u) >> (vec4<u32>(54560u, global1.x, global2.a.x, 0u) % vec4<u32>(32u))), select(vec2<u32>(44297u, 65984u), reverseBits(vec2<u32>(0u, 29143u)), global2.c.x), vec4<bool>(true, true, global2.c.x, 1u >= global1.x)), ~global2.b));
    let var_0 = abs(u_input.a) >> (countOneBits(_wgslsmith_add_vec3_u32(max(global2.a.zxy, global2.a.zzy) ^ ~vec3<u32>(0u, global1.x, 64763u), vec3<u32>(u_input.b, _wgslsmith_div_u32(global2.b.x, global1.x), 11892u))) % vec3<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(~global2.a, global2.a), _wgslsmith_clamp_vec2_u32(max(global1.yy, global1.yx), _wgslsmith_div_vec2_u32(global2.a.xx, _wgslsmith_add_vec2_u32(func_1(vec3<bool>(false, global2.c.x, true), Struct_1(global2.a, vec2<u32>(global1.x, 23359u), vec4<bool>(true, false, true, global2.c.x)), vec2<u32>(global2.b.x, 91724u)).b, global2.a.yy & global1.yx)), global1.yy), select(vec4<bool>(global2.c.x, func_1(func_4(global2.a.xzx, vec2<bool>(global2.c.x, global2.c.x), Struct_1(vec4<u32>(0u, 0u, u_input.b, global1.x), vec2<u32>(32449u, 4294967295u), global2.c)).c.yzx, Struct_1(vec4<u32>(global2.a.x, global1.x, 101576u, 10958u), global2.a.wz, vec4<bool>(true, global2.c.x, global2.c.x, false)), vec2<u32>(0u, global1.x)).c.x, !(-1i != u_input.c.x), all(func_1(vec3<bool>(global2.c.x, false, true), Struct_1(global2.a, vec2<u32>(21044u, global2.b.x), vec4<bool>(false, global2.c.x, global2.c.x, global2.c.x)), global1.yx).c)), global2.c, !(!global2.c)));
    var var_2 = _wgslsmith_mult_vec4_u32(~global2.a, ~global2.a);
    var var_3 = Struct_1(vec4<u32>(~global1.x, ~1u, u_input.b, 1u << (~4294967295u % 32u)), reverseBits(vec2<u32>(~var_2.x, min(~var_1.b.x, var_2.x))), !global2.c);
    var var_4 = var_1;
    global4 = array<vec4<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

