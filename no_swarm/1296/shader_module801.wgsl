struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> f32 {
    let var_0 = max(1i, ~(u_input.b.x ^ _wgslsmith_clamp_i32(u_input.d, 77858i, u_input.b.x)) | abs(6141i));
    global0 = vec2<bool>(all(select(vec4<bool>(false && global0.x, all(vec3<bool>(false, false, global0.x)), false, select(global0.x, false, global0.x)), select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, true, global0.x, global0.x), global0.x), !vec4<bool>(global0.x, global0.x, global0.x, global0.x), !vec4<bool>(false, true, true, global0.x)), select(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(true, true, true, false)), vec4<bool>(true, global0.x, true, global0.x), select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(false, global0.x, true, true), false)))), true);
    global0 = !vec2<bool>(!global0.x, true);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1070f - -934f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), -509f))))));
    let var_2 = Struct_2(Struct_1(true));
    return _wgslsmith_div_f32(-1264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1000f, -714f, true))))))));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))));
    global0 = !select(select(select(vec2<bool>(global0.x, false), !vec2<bool>(false, global0.x), all(vec4<bool>(global0.x, global0.x, false, false))), select(!vec2<bool>(global0.x, true), select(vec2<bool>(false, true), vec2<bool>(true, global0.x), global0.x), true), vec2<bool>(true, false)), !vec2<bool>(true, all(vec3<bool>(false, true, true))), select(global0.x, true, any(vec4<bool>(false, global0.x, true, global0.x))) && true);
    global0 = vec2<bool>(false, (all(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), global0.x)) | global0.x) || ((global0.x && (true != global0.x)) || (_wgslsmith_f_op_f32(-var_0) > _wgslsmith_div_f32(899f, var_0))));
    var var_1 = global0.x;
    global0 = vec2<bool>(all(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(true, global0.x), false), global0.x)), false);
    return Struct_3(0u | ~u_input.c);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = Struct_2(Struct_1(any(!vec2<bool>(global0.x, global0.x)) && any(select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, false)))));
    let var_2 = func_2();
    var_1 = Struct_2(var_1.a);
    var_0 = var_2;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.d | abs(~1i));
    global0 = !select(select(vec2<bool>(true, true), select(!vec2<bool>(global0.x, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(var_0.a, true)), vec2<bool>(true, false), var_0.a);
    var var_1 = (_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, u_input.c), select(select(vec2<u32>(u_input.a, 1u), vec2<u32>(24423u, 67957u), false), vec2<u32>(u_input.a, u_input.c) ^ vec2<u32>(u_input.c, 28274u), select(vec2<bool>(true, var_0.a), vec2<bool>(var_0.a, false), true))) << (vec2<u32>(~min(8880u, u_input.c), 15939u) % vec2<u32>(32u))) >> (vec2<u32>(abs(~0u & min(u_input.a, u_input.a)), ~1u) % vec2<u32>(32u));
    let var_2 = ~u_input.d;
    var var_3 = firstLeadingBit(vec4<i32>(select(_wgslsmith_dot_vec2_i32(-u_input.b, _wgslsmith_add_vec2_i32(u_input.b, u_input.b)), -(35274i << (u_input.a % 32u)), any(select(vec3<bool>(true, false, global0.x), vec3<bool>(false, global0.x, false), var_0.a))), 68171i, firstLeadingBit(reverseBits(abs(u_input.d))), -var_2));
    let x = u_input.a;
    s_output = StorageBuffer(497f, ~select(vec4<u32>(_wgslsmith_mult_u32(4294967295u, var_1.x), ~u_input.a, 37216u, var_1.x), firstLeadingBit(~vec4<u32>(16850u, u_input.a, 23570u, u_input.c)), !var_0.a), _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(22868u, u_input.c, 0u), vec3<u32>(var_1.x, var_1.x, u_input.a)) >> (select(~vec3<u32>(113296u, 6544u, 5083u), vec3<u32>(var_1.x, 1u, 11416u), true) % vec3<u32>(32u)), ~(firstLeadingBit(vec3<u32>(4294967295u, var_1.x, 1u)) | vec3<u32>(u_input.c, var_1.x, 75074u))), select(reverseBits(-(vec4<i32>(var_3.x, u_input.d, 61322i, -6501i) | vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, 13161i))), -firstTrailingBit(vec4<i32>(var_3.x, -6058i, 0i, u_input.b.x) & vec4<i32>(var_3.x, 0i, u_input.d, -78724i)), vec4<bool>(false, !global0.x, true, any(!vec2<bool>(var_0.a, global0.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(424f, 1574f, -1571f, -1247f) * vec4<f32>(-1345f, 3428f, -471f, -525f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-463f, -380f, 2234f, -1062f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(239f, 520f, 772f, 1000f))), !vec4<bool>(var_0.a, true, false, false))), !vec4<bool>(var_0.a, global0.x, false, true)))));
}

