struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: Struct_1;

var<private> global2: vec4<f32> = vec4<f32>(-799f, 1000f, 710f, 1580f);

var<private> global3: array<Struct_1, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = ~_wgslsmith_add_vec2_u32(abs(reverseBits(vec2<u32>(arg_0.x, 1u) << (arg_1.a.a.zz % vec2<u32>(32u)))), arg_1.c.zz);
    var_0 = vec2<u32>(arg_1.a.a.x, 4294967295u);
    let var_1 = Struct_5(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~max(vec2<u32>(4294967295u, u_input.a), vec2<u32>(39994u, 33589u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 1u), _wgslsmith_sub_vec2_u32(arg_1.a.a.xy, vec2<u32>(arg_1.c.x, arg_0.x)), ~vec2<u32>(arg_0.x, arg_1.c.x))), var_0.x), Struct_4(max(1i, abs(u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1047f))))));
    var_0 = _wgslsmith_clamp_vec2_u32(firstLeadingBit(countOneBits((vec2<u32>(0u, global1.a.x) & vec2<u32>(52610u, var_1.a)) ^ vec2<u32>(arg_0.x, u_input.a))), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(arg_1.a.a.x, 0u) ^ arg_0.yy, vec2<u32>(0u, _wgslsmith_div_u32(var_1.a, 139166u))), arg_0.zz), ~_wgslsmith_sub_vec2_u32(~arg_1.c.xy, _wgslsmith_mult_vec2_u32(vec2<u32>(64958u, 52513u) | vec2<u32>(1u, var_0.x), arg_0.xy)));
    global1 = global3[_wgslsmith_index_u32(min(var_1.a, 60650u), 15u)];
    return countOneBits(vec3<u32>(4294967295u ^ max(arg_1.c.x, _wgslsmith_dot_vec3_u32(arg_0, arg_0)), 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, arg_1.c.x, u_input.a), global1.a) & ~_wgslsmith_mult_u32(var_0.x, u_input.a)));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.zw - global2.xx), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.yz), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.xx + global2.xy), global2.yx), global2.zy)), !(!global0.xx)));
    let var_1 = global3[_wgslsmith_index_u32(firstLeadingBit(~(~_wgslsmith_div_u32(~global1.a.x, _wgslsmith_dot_vec2_u32(global1.a.xy, vec2<u32>(19453u, u_input.a))))), 15u)];
    let var_2 = vec3<i32>(_wgslsmith_add_i32(~(-2147483647i), select(arg_1, arg_1, arg_0.x <= 1u)) ^ firstLeadingBit(countOneBits(59491i)), arg_1 & 8451i, _wgslsmith_mod_i32(u_input.b, _wgslsmith_mod_i32(arg_1, 33879i)));
    var var_3 = func_3(vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(var_1.a.x, var_1.a.x), reverseBits(global1.a.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0, global1.a.yz), ~var_1.a.x), ~38324u) >> ((countOneBits(~vec3<u32>(38948u, u_input.a, var_1.a.x)) & vec3<u32>(1u, global1.a.x, _wgslsmith_mult_u32(0u, 23592u))) % vec3<u32>(32u)), Struct_2(Struct_1(vec3<u32>(reverseBits(var_1.a.x), 4294967295u, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(1619f * -1868f), 2239f, var_0.x) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, -419f, 369f, var_0.x)))))), ~(~(var_1.a ^ vec3<u32>(var_1.a.x, 34508u, global1.a.x)))));
    global3 = array<Struct_1, 15>();
    return global1.a.x << (_wgslsmith_mult_u32(var_3.x, ~(~1u)) % 32u);
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), global1.a.zy) >> (~vec2<u32>(0u, _wgslsmith_mult_u32(global1.a.x, global1.a.x) ^ func_2(global1.a.xy, u_input.b)) % vec2<u32>(32u));
    let var_1 = Struct_3(vec2<u32>(abs(68839u), 0u), Struct_2(Struct_1(vec3<u32>(~58955u, u_input.a << (0u % 32u), var_0.x)), vec4<f32>(_wgslsmith_f_op_f32(582f + 1000f), _wgslsmith_f_op_f32(-global2.x), -165f, -1712f), _wgslsmith_mult_vec3_u32(func_3(vec3<u32>(var_0.x, var_0.x, 51467u), Struct_2(Struct_1(global1.a), vec4<f32>(817f, global2.x, global2.x, global2.x), vec3<u32>(4294967295u, 0u, global1.a.x))), ~(~global1.a))), global3[_wgslsmith_index_u32(abs(~global1.a.x), 15u)], ~global1.a);
    var_0 = abs(var_1.d.zy);
    var_0 = ~(~(global1.a.zx ^ ~var_1.b.a.a.yx));
    var var_2 = false;
    return Struct_4(abs(abs(u_input.b)), _wgslsmith_f_op_f32(trunc(global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(vec3<u32>(~global1.a.x | u_input.a, global1.a.x, 4294967295u));
    var var_0 = func_1();
    global3 = array<Struct_1, 15>();
    var_0 = Struct_4(var_0.a, 372f);
    var var_1 = !select(vec3<bool>(true, !global0.x, !global0.x), !select(!vec3<bool>(global0.x, global0.x, global0.x), !vec3<bool>(true, false, global0.x), false), global0.x);
    var var_2 = Struct_5(global1.a.x >> (u_input.a % 32u), Struct_4(abs(u_input.b), _wgslsmith_f_op_f32(-global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, ~36646u | ((1u & u_input.a) >> (4294967295u % 32u)), ~(~countOneBits(51371u))), var_0.b);
}

