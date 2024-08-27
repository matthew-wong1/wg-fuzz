struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 1i, 1i);

var<private> global2: Struct_1 = Struct_1(-955f, vec3<f32>(-1796f, 2209f, 883f), vec4<f32>(-1217f, 1652f, 447f, 486f));

var<private> global3: array<vec4<bool>, 19> = array<vec4<bool>, 19>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    let var_0 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), vec3<bool>(-global1.x < ~(-16918i), true, true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))), vec3<bool>(!(~u_input.a.x <= global1.x), true, true), vec3<bool>(true, true, true));
    global1 = firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -46424i, -1i, u_input.a.x), vec4<i32>(u_input.a.x, -31136i, u_input.a.x, 2147483647i))), -(vec2<i32>(global1.x, global1.x) ^ global1.yz)), ~(-10563i), ~global1.x));
    var var_1 = !global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, arg_1.x, 12166u), vec4<u32>(4294967295u, 1u, 1u, 52057u)) ^ arg_1.x) | ~1u, _wgslsmith_mod_u32(1u, ~(~arg_1.x)), arg_1.x), 19u)];
    let var_2 = firstLeadingBit(select(~(~vec2<u32>(arg_1.x, 11943u)), arg_1, var_0.x));
    let var_3 = select(select(vec4<bool>(!var_0.x, !(u_input.a.x > 8371i), global2.b.x > global0.c.x, !var_1.x), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(abs(vec4<u32>(33385u, 0u, var_2.x, var_2.x)), ~vec4<u32>(28040u, arg_1.x, arg_1.x, u_input.b.x), !var_0.x), ~reverseBits(vec4<u32>(var_2.x, var_2.x, 0u, 90865u))), 19u)], !select(any(vec3<bool>(true, true, false)), any(vec3<bool>(false, false, false)), var_1.x)), !vec4<bool>(!(var_0.x == true), _wgslsmith_dot_vec3_u32(u_input.b, u_input.b) >= ~0u, true, _wgslsmith_f_op_f32(-global2.a) >= _wgslsmith_f_op_f32(f32(-1f) * -378f)), !vec4<bool>(all(!vec4<bool>(true, var_1.x, var_0.x, var_0.x)), true, all(var_1.zyz), true));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -718f), -1329f);
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = ~(-firstLeadingBit(vec4<i32>(-61633i, -19945i, global1.x, u_input.a.x) & _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 0i, global1.x, u_input.a.x), vec4<i32>(u_input.a.x, -46687i, 1i, -7935i))));
    let var_1 = _wgslsmith_sub_u32(~(~111962u), 2490u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.x, global0.c.x, arg_0.x), vec3<f32>(364f, arg_0.x, global2.b.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.b.x, 365f, global0.a) + global2.b)) - vec3<f32>(720f, -1493f, _wgslsmith_f_op_f32(global2.c.x * arg_0.x))), select(firstTrailingBit(vec2<u32>(1u, 1u)), ~vec2<u32>(var_1, var_1), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-1162f - _wgslsmith_div_f32(-258f, _wgslsmith_div_f32(arg_0.x, -211f))))) - 1438f);
    var var_3 = ~(~firstTrailingBit(~u_input.b.x));
    let var_4 = u_input.b.x;
    return select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), false), vec2<bool>(true, any(vec2<bool>(false, true))), !all(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(false, false, false, false))))), select(select(vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, false), vec2<bool>(true, false), false), all(vec2<bool>(true, true)))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), true));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = true;
    var var_1 = !(!func_2(global0.c.yxw));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global0.c.x)), _wgslsmith_f_op_f32(-1000f - -878f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_2.c.xxz * vec3<f32>(1359f, -827f, global0.a))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1130f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_2.b.x))), -148f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1094f, 2452f))))));
    global0 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.c.x, global2.b.x))), global2.b.x)))), global2.c.wwz, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.a)), _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_2.c.zzw, vec2<u32>(u_input.b.x, u_input.b.x), arg_2.a)), 1686f) * _wgslsmith_f_op_f32(-arg_1)), global2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-365f + -1000f) + arg_1)))));
    var var_3 = var_2.a;
    return select(vec2<i32>(0i, _wgslsmith_add_i32(u_input.a.x, -2147483647i) << (3346u % 32u)), reverseBits(global1.yx), select(vec2<bool>(var_0, var_0), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1159f, 1204f, 1393f))), true)) >> (vec2<u32>(~select(~1u, ~39543u, true), ~u_input.b.x) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<bool>, 19>();
    let var_0 = ~(-vec4<i32>(1i ^ global1.x, _wgslsmith_dot_vec2_i32(u_input.a.yx, func_1(vec2<i32>(global1.x, u_input.a.x), 450f, Struct_1(global2.b.x, global2.c.zxx, vec4<f32>(global0.c.x, global0.b.x, -752f, global2.b.x)))), global1.x, -13763i));
    global3 = array<vec4<bool>, 19>();
    var var_1 = reverseBits(-select(u_input.a.zy, vec2<i32>(1i, u_input.a.x), false) >> (_wgslsmith_sub_vec2_u32(countOneBits(~u_input.b.zy), firstLeadingBit(vec2<u32>(78986u, 8072u))) % vec2<u32>(32u)));
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) + _wgslsmith_f_op_f32(select(-758f, _wgslsmith_f_op_f32(-235f - _wgslsmith_f_op_f32(trunc(global0.b.x))), true))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(928f)) + _wgslsmith_f_op_f32(round(-1280f))), _wgslsmith_f_op_f32(-367f * _wgslsmith_f_op_f32(f32(-1f) * -835f)), global0.b.x) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.x * 871f), global2.a), -955f, _wgslsmith_f_op_f32(global0.a + global2.c.x))), global0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-852f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) * _wgslsmith_f_op_f32(abs(-248f))), any(vec3<bool>(false, false, true)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 1284f, global0.a), _wgslsmith_f_op_vec3_f32(global0.c.wzz + global0.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2015f, global2.a, global2.b.x) * vec3<f32>(global0.c.x, -765f, global2.c.x))))))), 122f, -var_1.x, vec2<i32>(var_0.x, global1.x));
}

