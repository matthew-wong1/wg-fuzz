struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(27854u, 48246u, 4294967295u, 0u);

var<private> global1: vec3<f32> = vec3<f32>(330f, 238f, -177f);

var<private> global2: bool;

var<private> global3: Struct_1;

var<private> global4: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> bool {
    let var_0 = ~(u_input.e << (reverseBits(~vec4<u32>(1u, 4294967295u, u_input.e.x, 4294967295u)) % vec4<u32>(32u))) ^ firstLeadingBit(~_wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(global0.x, 0u, u_input.e.x, u_input.b)) >> (u_input.e % vec4<u32>(32u)));
    global3 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(global1.yz)), !global3.c.x, vec4<bool>(global3.c.x, false, true, _wgslsmith_f_op_f32(759f + _wgslsmith_f_op_f32(-global1.x)) != global3.a.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, -1000f))))))), select(all(select(select(vec4<bool>(global3.c.x, global3.b, global3.b, false), global3.c, vec4<bool>(global3.b, true, true, global3.c.x)), !global3.c, !global3.c.x)), abs(global0.x) < global0.x, true), global3.c);
    let var_2 = Struct_1(vec2<f32>(global3.a.x, _wgslsmith_f_op_f32(floor(var_1.a.x))), !(1i < (select(-4719i, 19689i, global3.b) | u_input.d)), !select(vec4<bool>(var_1.b & global3.b, any(var_1.c.xyw), global3.b, false & var_1.c.x), !(!global3.c), !var_1.c));
    var var_3 = ~(-2147483647i) >> (~(_wgslsmith_mod_u32(~global0.x, 22713u) << (0u % 32u)) % 32u);
    return select((~20662u > ~(~u_input.b)) | true, false, any(!vec2<bool>(any(var_2.c.wx), all(global3.c.zyy))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1864f, -1863f))))));
    global2 = func_3();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_mult_i32(min(-38054i, ~0i), 1i);
    global1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(floor(-813f)), global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(194f)) - _wgslsmith_f_op_f32(max(-899f, global1.x)))), vec3<f32>(-703f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.a.x - 876f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 166f, arg_0.a.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1463f, var_1.a.x, -1269f)))), arg_0.b))));
    return ~max(_wgslsmith_sub_u32(0u, ~global0.x) >> (u_input.e.x % 32u), ~global0.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    return Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.a.x, global3.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.a.x - 1000f)))), global1.yx)), !arg_1.c.x, vec4<bool>(!(!arg_1.b || global3.c.x), select(true, all(!arg_1.c.yw), global3.b), func_3(), !(121f < arg_1.a.x)));
}

fn func_1(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = _wgslsmith_clamp_vec3_u32(~global0.xyz, vec3<u32>(global0.x, u_input.e.x, global0.x), _wgslsmith_sub_vec3_u32(global0.yyz, u_input.e.zwz));
    global0 = min(u_input.e, firstTrailingBit(~u_input.e)) & u_input.e;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global1.x) + vec2<f32>(-946f, global3.a.x)) + _wgslsmith_f_op_vec2_f32(-global1.xy)) * _wgslsmith_f_op_vec2_f32(-global1.yy)))), global3.b, !global3.c);
    global3 = func_4(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.x & 8991u, select(1u, global0.x, false), _wgslsmith_mult_u32(1u, u_input.e.x), 38778u)), vec4<u32>(u_input.b, func_2(Struct_1(global1.xz, global3.c.x, vec4<bool>(var_1.b, var_1.b, false, true))), u_input.b, reverseBits(global0.x))), var_1);
    let var_2 = var_1;
    return vec4<f32>(-1172f, func_4(1u >> ((min(u_input.e.x, 73769u) | (4532u >> (1u % 32u))) % 32u), func_4(0u, var_2)).a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f - 2162f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), 1f))), _wgslsmith_f_op_f32(f32(-1f) * -432f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_1(countOneBits(vec3<i32>(886i, 29593i, u_input.d)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 937f, -928f, global1.x)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-659f, -1898f, -1000f, global1.x))))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(332f, 969f, 2342f, 1624f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(108f, global3.a.x, -537f, global3.a.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, global1.x, global3.a.x, global1.x)), vec4<f32>(-244f, global1.x, global3.a.x, global1.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1349f, -1395f, global1.x, global3.a.x)))))), !global3.b)));
    var var_1 = global0.wyz;
    global3 = func_4(~1u, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global1.xx * vec2<f32>(global3.a.x, 1265f)))), _wgslsmith_mod_i32(min(u_input.c, -2147483647i), ~(-27637i)) <= _wgslsmith_div_i32(u_input.d, u_input.a << (global0.x % 32u)), global3.c));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 486f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, global3.a.x))), vec2<f32>(-553f, _wgslsmith_f_op_f32(-global3.a.x)))))), var_0.xz));
    let var_3 = all(vec2<bool>(any(select(global3.c.wz, global3.c.xz, false)), all(vec3<bool>(true, false, global3.c.x)) && all(func_4(var_1.x, Struct_1(vec2<f32>(var_2.x, var_2.x), global3.c.x, global3.c)).c.wzz)));
    let var_4 = vec2<i32>(_wgslsmith_dot_vec4_i32(~max(vec4<i32>(-5489i, -23242i, 30674i, 19434i), vec4<i32>(u_input.a, u_input.c, 2147483647i, u_input.c)), (~vec4<i32>(35675i, 1i, -2147483647i, -67429i) >> (~u_input.e % vec4<u32>(32u))) << (~_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(32001u, 4906u, 1u, global0.x)) % vec4<u32>(32u))), -51074i);
    let var_5 = _wgslsmith_f_op_vec3_f32(sign(var_0.zxw));
    global3 = func_4(u_input.e.x << (u_input.b % 32u), Struct_1(global1.xz, _wgslsmith_f_op_f32(-1000f - global3.a.x) == 257f, !(!global3.c)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(_wgslsmith_clamp_i32(1i, -1i, min(var_4.x, var_4.x)), _wgslsmith_dot_vec3_i32(~vec3<i32>(92i, -1i, var_4.x), vec3<i32>(u_input.d, 1i, u_input.c))), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, min(u_input.a, 4593i)), vec2<i32>(0i, 1i << (1u % 32u))), global3.c.yx), global0.x);
}

