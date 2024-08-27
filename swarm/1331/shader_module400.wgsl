struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<f32, 16>;

var<private> global2: array<f32, 31>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = -firstTrailingBit(_wgslsmith_sub_i32(~(arg_0.b.x ^ arg_0.b.x), max(arg_0.b.x, 0i)));
    global0 = !(!select(vec3<bool>(false, arg_0.c.x, true), select(select(vec3<bool>(arg_0.c.x, false, true), arg_0.c.wzz, global0.x), vec3<bool>(true, false, arg_0.c.x), !vec3<bool>(true, true, arg_0.c.x)), any(arg_0.c.wx) || arg_0.c.x));
    let var_1 = reverseBits(vec2<u32>(_wgslsmith_mod_u32(16200u, u_input.a.x), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d, arg_0.d, 48255u), vec3<u32>(arg_0.d, u_input.a.x, u_input.a.x)) ^ u_input.a.x) | vec2<u32>(u_input.a.x, ~(~56162u)));
    let var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~arg_0.d, 31u)] - -178f), _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(round(-1557f))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(firstTrailingBit(var_1.x), 31u)], 2035f))))));
    let var_3 = Struct_2(~_wgslsmith_mult_vec4_i32(-vec4<i32>(var_0, -8231i, arg_0.b.x, arg_0.b.x) ^ ~vec4<i32>(var_0, 53117i, arg_0.b.x, 0i), ~select(vec4<i32>(-13371i, 2920i, -7882i, 2147483647i), vec4<i32>(arg_0.b.x, -22857i, -23453i, -54340i), true)), 16254u, Struct_1(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x * var_2.x))), -9366i <= ~var_0)), arg_0.b, !arg_0.c, select(_wgslsmith_div_u32(abs(4294967295u), 93535u), var_1.x, arg_0.c.x)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(round(arg_1)) > global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 80027u), 16u)])), vec2<i32>(-27865i, firstLeadingBit(var_0) << (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u)), vec4<bool>(true, (1u != var_1.x) || global0.x, !(true && global0.x), arg_0.c.x), arg_0.d));
    return max(~_wgslsmith_mod_u32(~var_1.x, _wgslsmith_sub_u32(28011u, arg_0.d)), ~(~arg_0.d ^ ~4294967295u)) | var_1.x;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: vec3<u32>) -> vec4<bool> {
    global2 = array<f32, 31>();
    var var_0 = Struct_2(~(~_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, arg_0, 1i, arg_0), vec4<i32>(-1i, arg_0, arg_2.b.x, -2147483647i))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(firstLeadingBit(-54902i), arg_2.b.x, _wgslsmith_clamp_i32(arg_2.b.x, arg_0, 1116i), ~(-30375i)), vec4<i32>(arg_0 | arg_0, 22349i, -50538i, arg_0 & -2147483647i)), select(~func_3(arg_2, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_2.d, 31u)])), arg_1.x & ~(arg_3.x << (4294967295u % 32u)), true), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(105f, 785f))), -1312f, arg_2.c.x)), -arg_2.b, select(select(select(arg_2.c, vec4<bool>(true, false, global0.x, arg_2.c.x), vec4<bool>(false, false, arg_2.c.x, global0.x)), arg_2.c, select(vec4<bool>(false, global0.x, false, false), vec4<bool>(false, false, false, global0.x), arg_2.c.x)), arg_2.c, !(!arg_2.c)), 6423u), Struct_1(_wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(arg_2.d, 16u)])), ~arg_2.b, arg_2.c, ~_wgslsmith_dot_vec3_u32(~arg_1.wwz, vec3<u32>(u_input.a.x, 11083u, arg_3.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(229f, 1475f, -615f, global1[_wgslsmith_index_u32(35525u, 16u)]))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.c.a, var_0.d.a, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], -115f))))))) - vec4<f32>(global1[_wgslsmith_index_u32(~(~abs(arg_1.x)), 16u)], _wgslsmith_f_op_f32(f32(-1f) * -743f), _wgslsmith_f_op_f32(-var_0.c.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_3, vec3<u32>(4294967295u, u_input.a.x, arg_3.x)), 31u)])))));
    global2 = array<f32, 31>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.a, arg_2.a, global0.x))))), _wgslsmith_mult_vec2_i32(~abs(arg_2.b), vec2<i32>(select(var_0.c.b.x, arg_2.b.x, true), -45122i) | reverseBits(select(vec2<i32>(14879i, -1i), vec2<i32>(arg_0, -6541i), arg_2.c.yw))), var_0.d.c, _wgslsmith_mult_u32(func_3(arg_2, arg_2.a), 50416u));
    return !arg_2.c;
}

fn func_1() -> u32 {
    global1 = array<f32, 16>();
    global2 = array<f32, 31>();
    global2 = array<f32, 31>();
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-126f - _wgslsmith_f_op_f32(-908f + -178f)), 201f), select((-vec2<i32>(2147483647i, 2147483647i) << (u_input.a.zy % vec2<u32>(32u))) | (vec2<i32>(20746i, 23768i) >> (~vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), ~(-(vec2<i32>(-2147483647i, 53930i) >> (u_input.a.zz % vec2<u32>(32u)))), select(!global0.zz, vec2<bool>(!global0.x, global0.x), ~25072u >= min(u_input.a.x, 0u))), !select(!vec4<bool>(global0.x, global0.x, global0.x, true), select(select(vec4<bool>(true, global0.x, false, global0.x), vec4<bool>(false, global0.x, false, global0.x), global0.x), func_2(-22994i, vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), Struct_1(690f, vec2<i32>(24699i, -69831i), vec4<bool>(global0.x, global0.x, global0.x, true), u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), !vec4<bool>(global0.x, true, global0.x, false)), vec4<bool>(true, global0.x, all(vec3<bool>(global0.x, false, true)), global2[_wgslsmith_index_u32(28759u, 31u)] <= 311f)), u_input.a.x);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(min(-301f, -780f)), abs(var_0.b), var_0.c, ~u_input.a.x);
    return _wgslsmith_clamp_u32(min(reverseBits(4294967295u), func_3(Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), var_1.b, vec4<bool>(false, var_0.c.x, true, false), 1u), global1[_wgslsmith_index_u32(var_1.d, 16u)])), _wgslsmith_mod_u32(var_1.d, u_input.a.x), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(544f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-120f, -176f) * _wgslsmith_f_op_f32(floor(2734f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -373f))) + vec3<f32>(global2[_wgslsmith_index_u32(func_1() >> (~(~u_input.a.x) % 32u), 31u)], global2[_wgslsmith_index_u32(4294967295u, 31u)], global1[_wgslsmith_index_u32(~5543u, 16u)]));
    let var_1 = true;
    var var_2 = u_input.a.x;
    global1 = array<f32, 16>();
    let var_3 = _wgslsmith_mod_i32(1i, min(26927i, ~0i) & -(~_wgslsmith_clamp_i32(1i, -11816i, 16921i)));
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(1i, -var_3)), vec2<i32>(var_3 & -var_3, min(1i, var_3 | var_3)), vec2<i32>(var_3, (var_3 << (37379u % 32u)) ^ var_3)), ~abs(~vec2<i32>(0i, var_3)));
}

