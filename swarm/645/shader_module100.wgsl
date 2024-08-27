struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 15> = array<Struct_2, 15>(Struct_2(-25463i, vec3<i32>(i32(-2147483648), 11167i, i32(-2147483648)), -11295i, vec4<u32>(4294967295u, 15694u, 23428u, 1u)), Struct_2(-1i, vec3<i32>(26700i, -1i, 0i), 1i, vec4<u32>(0u, 1u, 16788u, 1u)), Struct_2(49032i, vec3<i32>(-1i, 25320i, -37348i), 22910i, vec4<u32>(4294967295u, 1u, 4294967295u, 0u)), Struct_2(12432i, vec3<i32>(-14658i, -41359i, 65730i), -14750i, vec4<u32>(27357u, 88892u, 38152u, 4294967295u)), Struct_2(i32(-2147483648), vec3<i32>(1i, i32(-2147483648), 25722i), 4910i, vec4<u32>(4294967295u, 20396u, 1u, 62702u)), Struct_2(18737i, vec3<i32>(2147483647i, 56010i, -6036i), 17526i, vec4<u32>(1u, 46426u, 25221u, 12443u)), Struct_2(8684i, vec3<i32>(1i, -1i, -1i), -1i, vec4<u32>(1u, 4294967295u, 1u, 1u)), Struct_2(-6014i, vec3<i32>(-49470i, 2147483647i, 2147483647i), -54404i, vec4<u32>(27296u, 28962u, 0u, 19614u)), Struct_2(-1i, vec3<i32>(-5154i, -42510i, 2147483647i), -4523i, vec4<u32>(58555u, 1u, 39191u, 6604u)), Struct_2(1i, vec3<i32>(24496i, 2147483647i, 24129i), -3468i, vec4<u32>(4294967295u, 0u, 1u, 0u)), Struct_2(-1i, vec3<i32>(2147483647i, -1i, 7557i), -38437i, vec4<u32>(0u, 1u, 4294967295u, 44812u)), Struct_2(-10389i, vec3<i32>(1i, i32(-2147483648), 0i), -1i, vec4<u32>(4294967295u, 30525u, 14555u, 18147u)), Struct_2(0i, vec3<i32>(2147483647i, -1i, i32(-2147483648)), -1i, vec4<u32>(16060u, 47106u, 4294967295u, 4294967295u)), Struct_2(-48656i, vec3<i32>(-5807i, i32(-2147483648), 23139i), 2147483647i, vec4<u32>(64511u, 1u, 4294967295u, 46701u)), Struct_2(5549i, vec3<i32>(i32(-2147483648), 0i, 2147483647i), 2147483647i, vec4<u32>(2355u, 1u, 1u, 4294967295u)));

var<private> global1: array<u32, 7> = array<u32, 7>(4294967295u, 38400u, 22724u, 1u, 4294967295u, 4886u, 4294967295u);

var<private> global2: array<vec3<i32>, 4>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2) -> vec2<f32> {
    global2 = array<vec3<i32>, 4>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2061f * 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-577f)) * 153f)));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2) -> vec3<bool> {
    global1 = array<u32, 7>();
    let var_0 = 27310i;
    global1 = array<u32, 7>();
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-573f * 1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1614f, -1100f))))));
    return vec3<bool>(!(!any(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), true, true);
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(select(1363f, _wgslsmith_f_op_f32(-arg_1.x), arg_2.a != 7253i))), _wgslsmith_f_op_vec2_f32(arg_1.xy * arg_1.zz)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.zz - vec2<f32>(_wgslsmith_div_f32(1077f, -993f), _wgslsmith_f_op_f32(min(arg_1.x, 837f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(countOneBits(4294967295u), min(22918u, 55696u), 48435u), 15u)])))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(any(func_2(u_input.a.x, vec4<u32>(4294967295u, 0u, u_input.a.x, 0u), global0[_wgslsmith_index_u32(34391u, 15u)])), vec3<f32>(_wgslsmith_f_op_f32(-1383f + -1434f), _wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], 15u)])).x, -1285f), global0[_wgslsmith_index_u32(1u, 15u)])) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(true, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(790f, -1066f, -430f), vec3<f32>(-940f, 1000f, -1000f))), Struct_2(9826i, vec3<i32>(-1i, -2147483647i, -1i), -4226i, u_input.b))))));
    var var_1 = Struct_2(firstTrailingBit(abs(abs(-1i))), -(~global2[_wgslsmith_index_u32(17279u, 4u)]), _wgslsmith_sub_i32(select(i32(-1i) * -1i, abs(~1i), false), 1i), _wgslsmith_mod_vec4_u32(~max(vec4<u32>(4294967295u, 1u, 0u, global1[_wgslsmith_index_u32(55513u, 7u)]), select(u_input.b, vec4<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.a.x, 7u)], 1u, global1[_wgslsmith_index_u32(u_input.c, 7u)]), vec4<bool>(false, true, true, true))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b | u_input.b, u_input.b), vec4<u32>(global1[_wgslsmith_index_u32(abs(u_input.c), 7u)], u_input.a.x, _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 7u)], 52630u, u_input.a.x), 1u), u_input.b)));
    var var_2 = vec2<u32>(firstTrailingBit(14422u), _wgslsmith_sub_u32(firstLeadingBit(1u), 1u));
    var_2 = ~u_input.a.zz >> (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u));
    let var_3 = Struct_1(-118f);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.b.ww), vec4<f32>(-1797f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.x)) * _wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2337f - var_0.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(global0[_wgslsmith_index_u32(1u, 15u)])).x * var_3.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec2_f32(func_3(true, _wgslsmith_f_op_vec3_f32(vec3<f32>(806f, var_3.a, 537f) - vec3<f32>(var_0.x, var_0.x, var_3.a)), global0[_wgslsmith_index_u32(var_1.d.x, 15u)])).x, -976f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(790f, var_0.x, 939f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1867f, var_0.x, -222f), vec3<f32>(2107f, var_0.x, var_0.x), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, var_3.a, var_3.a) * vec3<f32>(882f, 589f, 228f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, 1506f, 710f)))))), 1i);
}

