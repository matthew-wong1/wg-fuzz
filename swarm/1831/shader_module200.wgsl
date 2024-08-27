struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: f32 = -639f;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32) -> f32 {
    global1 = 889f;
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-287f - -844f), _wgslsmith_div_f32(319f, -1000f), _wgslsmith_f_op_f32(-236f - 641f))))));
    global0 = array<Struct_3, 27>();
    global0 = array<Struct_3, 27>();
    var var_1 = -563f;
    return _wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: bool) -> vec2<bool> {
    var var_0 = !(!vec4<bool>(false, false != all(vec3<bool>(global2.x, true, global2.x)), select(all(vec4<bool>(arg_3, arg_3, false, global2.x)), select(global2.x, false, global2.x), true), ~u_input.a.x == firstTrailingBit(92622u)));
    let var_1 = ~(abs(vec3<u32>(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), ~3896u, ~4294967295u)) & firstTrailingBit(min(~vec3<u32>(u_input.a.x, u_input.a.x, 0u), _wgslsmith_mod_vec3_u32(u_input.a, u_input.a))));
    let var_2 = _wgslsmith_sub_vec3_i32(abs(vec3<i32>(1i, 1i, 1i)), select(firstLeadingBit(abs(vec3<i32>(236i, 1102i, 8236i))), vec3<i32>(-26507i, select(-2147483647i, 1i, true), 10117i), !all(var_0.yx)) | vec3<i32>(~firstTrailingBit(65325i), 45591i & select(0i, 8022i, global2.x), _wgslsmith_clamp_i32(firstTrailingBit(-14792i), abs(-2147483647i), ~37588i)));
    var_0 = vec4<bool>(var_0.x, !(!(!(arg_3 || var_0.x))), any(var_0.wzz), var_0.x);
    var var_3 = Struct_4(Struct_2(var_0.yxy), Struct_3(_wgslsmith_f_op_vec4_f32(-arg_2.a)), arg_3);
    return var_3.a.a.zz;
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(-1413f, _wgslsmith_f_op_f32(-1202f - 138f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f + -515f)), _wgslsmith_f_op_f32(abs(1000f))), vec3<f32>(1f, 1f, 1f))));
    global2 = select(func_4(_wgslsmith_f_op_f32(func_3(select(~(-31211i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -10661i), vec2<i32>(-73370i, 42146i)), any(vec4<bool>(true, false, global2.x, false))))), global0[_wgslsmith_index_u32(select(u_input.a.x, u_input.a.x, all(vec2<bool>(global2.x, true))), 27u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a.x), 27u)], all(vec2<bool>(select(false, true, global2.x), true))), !select(vec2<bool>(false, true), select(vec2<bool>(global2.x, true), select(vec2<bool>(false, true), vec2<bool>(true, true), global2.x), func_4(155f, global0[_wgslsmith_index_u32(u_input.a.x, 27u)], Struct_3(vec4<f32>(-1183f, 134f, 1120f, var_0.x)), global2.x).x), vec2<bool>(true, true)), false);
    var var_1 = Struct_2(select(select(!(!vec3<bool>(global2.x, global2.x, false)), vec3<bool>(global2.x, !global2.x, global2.x), !(u_input.a.x < 1u)), select(vec3<bool>(func_4(var_0.x, Struct_3(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), Struct_3(vec4<f32>(812f, var_0.x, var_0.x, -1352f)), global2.x).x, true, global2.x), vec3<bool>(global2.x, global2.x, select(global2.x, global2.x, global2.x)), false), all(vec3<bool>(global2.x, global2.x, global2.x)) == false));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(455f, var_0.x, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 630f, var_0.x)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.x, var_0.x, 399f, -455f)))))))));
    var var_3 = Struct_2(vec3<bool>(false, !(!global2.x), !select(var_1.a.x, false, global2.x)));
    return 1u < firstTrailingBit(26098u);
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = ~(~(~(~countOneBits(vec4<u32>(19398u, u_input.a.x, 86684u, u_input.a.x)))));
    var var_1 = select(vec4<bool>(arg_0.x, true, u_input.a.x >= abs(u_input.a.x), arg_0.x), vec4<bool>(!arg_0.x, false, true, global2.x || true), !(!vec4<bool>(func_2(), all(vec3<bool>(true, false, true)), true, arg_0.x)));
    var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, _wgslsmith_sub_u32(60033u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), max(var_0.x ^ var_0.x, ~(~var_0.x)), 10206u), ~max(vec4<u32>(var_0.x, _wgslsmith_mult_u32(u_input.a.x, 1u), countOneBits(1u), u_input.a.x << (24818u % 32u)), _wgslsmith_add_vec4_u32(min(vec4<u32>(var_0.x, u_input.a.x, 27126u, 42662u), vec4<u32>(var_0.x, 12085u, var_0.x, var_0.x)), vec4<u32>(1u, 4294967295u, 4294967295u, var_0.x) | vec4<u32>(u_input.a.x, 34136u, 40950u, u_input.a.x))));
    var var_2 = Struct_4(Struct_2(vec3<bool>(-314f < _wgslsmith_f_op_f32(step(2095f, -2095f)), all(var_1.zw), arg_0.x)), global0[_wgslsmith_index_u32(~max(_wgslsmith_mult_u32(~10899u, u_input.a.x >> (1u % 32u)), u_input.a.x), 27u)], true);
    var var_3 = -min(~2147483647i, 1i);
    return var_1.wx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!vec3<bool>(global2.x, true, select(true, false, global2.x)));
    global2 = func_1(var_0.a.xy);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(816f, 454f, 417f, 935f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, -717f, -480f, -890f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-405f, 666f, 894f, -128f))), vec4<f32>(1506f, -274f, -876f, -844f))))), !func_2()));
    let var_2 = vec3<bool>(global2.x, false, var_1.x <= -1004f);
    var var_3 = var_0.a.x;
    var_0 = Struct_2(var_0.a);
    var var_4 = firstTrailingBit(firstLeadingBit(abs(~vec3<i32>(1i, 0i, 1561i) | (vec3<i32>(20995i, -40465i, -34558i) >> (vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) % vec3<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(-456f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f * var_1.x)))), vec2<i32>(firstTrailingBit(~(~var_4.x)), -((i32(-1i) * -1i) << ((u_input.a.x << (u_input.a.x % 32u)) % 32u))), ~u_input.a.x);
}

