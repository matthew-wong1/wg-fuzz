struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 18>;

var<private> global1: array<Struct_4, 21>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<vec4<bool>, 32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1005f, 417f, true))))))));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1304f))));
    var var_2 = 8162i;
    var var_3 = vec3<i32>(~_wgslsmith_div_i32(1i, i32(-1i) * -17375i) ^ -firstLeadingBit(_wgslsmith_mult_i32(arg_1.b.x, arg_1.b.x)), 0i, 2147483647i);
    var var_4 = Struct_1(75637u, -_wgslsmith_mod_vec4_i32(abs(_wgslsmith_add_vec4_i32(vec4<i32>(0i, -47304i, arg_1.b.x, var_3.x), vec4<i32>(-21362i, var_3.x, 7396i, -1i))), vec4<i32>(~0i, 32939i, var_3.x, 1i)));
    return !(true || !all(vec2<bool>(true, true)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: bool) -> vec3<u32> {
    global1 = array<Struct_4, 21>();
    var var_0 = _wgslsmith_add_vec4_u32(firstTrailingBit(firstTrailingBit(reverseBits(firstTrailingBit(vec4<u32>(4294967295u, 1u, u_input.a, 0u))))), ~(~(~vec4<u32>(arg_0.a.a, 52366u, u_input.a, 52787u)) ^ firstLeadingBit(vec4<u32>(arg_0.a.a, u_input.a, 1u, arg_0.a.a))));
    let var_1 = vec2<i32>(select(arg_0.b.b.x ^ (arg_1.x | arg_0.a.b.x), arg_1.x, any(!vec4<bool>(arg_2, true, arg_2, arg_2))), _wgslsmith_add_i32(-arg_1.x, _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(-2147483647i, arg_1.x, arg_1.x)), vec3<i32>(u_input.b.x, arg_1.x, 1i)))) & arg_1.zy;
    var var_2 = !any(!select(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, false, arg_2), vec3<bool>(arg_2, false, arg_2)), !vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true)));
    let var_3 = firstLeadingBit(vec2<u32>(~(~29877u) | ~_wgslsmith_mult_u32(var_0.x, u_input.a), 21204u));
    return max(~(var_0.wzw >> (var_0.yww % vec3<u32>(32u))), vec3<u32>(0u, u_input.a & ~50665u, 1u)) << ((_wgslsmith_mod_vec3_u32(select(~var_0.wxw, ~var_0.xwx, select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, false, arg_2), vec3<bool>(false, false, false))), vec3<u32>(_wgslsmith_add_u32(4294967295u, arg_0.b.a), select(53814u, arg_0.b.a, arg_2), 1u)) >> ((~var_0.xyw >> (var_0.yyx % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = 0i;
    let var_1 = max(vec3<u32>(arg_0.b.a, countOneBits(4294967295u), ~u_input.a), reverseBits(func_3(Struct_2(Struct_1(4294967295u, arg_0.a.b), Struct_1(u_input.a, arg_0.a.b), 610f), arg_0.b.b.xzy, !arg_1.x))) & func_3(Struct_2(arg_0.a, arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1449f, -742f))), arg_0.b.b.xwy, true);
    var_0 = arg_0.b.b.x;
    let var_2 = Struct_4(arg_0.a, arg_0.a);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-723f, 1047f))))))), _wgslsmith_f_op_f32(-735f - 1000f));
    return Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.xy << (vec2<u32>(0u, abs(26278u)) % vec2<u32>(32u)), abs(var_1.xz | var_1.xx)), 18u)], arg_0.a, Struct_2(arg_0.b, var_2.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-886f * -690f)) + -208f)), Struct_1(1u, -vec4<i32>(11481i, arg_0.a.b.x, _wgslsmith_mod_i32(3721i, arg_0.a.b.x), ~20251i)), arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(global1[_wgslsmith_index_u32(~u_input.a, 21u)], select(!vec3<bool>(any(vec2<bool>(false, true)), any(vec2<bool>(false, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)))), func_1(_wgslsmith_f_op_f32(661f * -2393f), Struct_1(~u_input.a, ~vec4<i32>(35275i, u_input.b.x, u_input.b.x, -2147483647i)))));
    var var_1 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(9534u, 18u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.c.c)), _wgslsmith_f_op_f32(-var_0.a.x))), 192f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + 600f) - _wgslsmith_f_op_f32(var_0.a.x * 1163f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.c, var_0.a.x))))), ~(reverseBits(min(vec2<u32>(0u, 30022u), vec2<u32>(u_input.a, 11999u))) >> (vec2<u32>(max(var_0.d.a, var_0.c.a.a), var_0.d.a ^ var_0.e.a) % vec2<u32>(32u))), var_0.a.zxx, vec4<i32>(select(0i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(var_0.b.b, vec4<i32>(-2971i, var_0.b.b.x, -17880i, u_input.b.x)), var_0.c.b.b.x), !select(true, true, true)), _wgslsmith_dot_vec3_i32(countOneBits(var_0.e.b.yxy), -var_0.d.b.yzz), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(var_0.d.b, vec4<i32>(u_input.b.x, var_0.e.b.x, var_0.d.b.x, u_input.b.x)), -var_0.c.b.b.x), u_input.b.x));
}

