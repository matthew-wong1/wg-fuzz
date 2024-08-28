struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 31>;

var<private> global2: vec3<u32> = vec3<u32>(1u, 10346u, 0u);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<f32>, arg_3: f32) -> vec2<f32> {
    let var_0 = Struct_1(min(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(global0.a, global0.a, vec2<i32>(global0.a.x, 1i)), vec2<i32>(_wgslsmith_sub_i32(-39312i ^ global0.a.x, _wgslsmith_mod_i32(global0.a.x, global0.a.x)), ~16214i)), countOneBits(_wgslsmith_clamp_u32(global0.c.x, u_input.b.x, _wgslsmith_clamp_u32(1u, u_input.a.x >> (u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, global0.c.x, 42421u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, global2.x))))), _wgslsmith_sub_vec3_u32(global0.c, global0.c));
    var var_1 = Struct_1(~firstTrailingBit(reverseBits(global0.a)), 58841u, countOneBits(vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.x, u_input.a.x, 0u) >> (var_0.c % vec3<u32>(32u)), select(var_0.c, vec3<u32>(54023u, 0u, 0u), vec3<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, arg_0.x))), global2.x)));
    return vec2<f32>(-896f, arg_3);
}

fn func_2(arg_0: bool) -> vec2<i32> {
    let var_0 = Struct_1(reverseBits(select(~reverseBits(global0.a), -global0.a ^ -global0.a, global1[_wgslsmith_index_u32(85595u, 31u)])), global2.x, abs(~(~(~global0.c))));
    var var_1 = -var_0.a.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, true, global1[_wgslsmith_index_u32(0u, 31u)], arg_0), _wgslsmith_f_op_f32(abs(-448f)), vec2<f32>(-1014f, 1000f), _wgslsmith_f_op_f32(min(-239f, -1339f))))))));
    var var_3 = var_0;
    let var_4 = select(vec3<bool>(-1227f >= _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(sign(var_2.x))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(94594u, var_3.c.x), 31u)], select(all(!vec3<bool>(false, arg_0, false)), !arg_0, !all(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 31u)])))), !vec3<bool>(global1[_wgslsmith_index_u32(var_3.b, 31u)], all(select(vec4<bool>(global1[_wgslsmith_index_u32(3243u, 31u)], false, global1[_wgslsmith_index_u32(var_0.c.x, 31u)], arg_0), vec4<bool>(true, arg_0, true, arg_0), arg_0)), !(arg_0 == true)), !(!(!(!vec3<bool>(false, arg_0, arg_0)))));
    return vec2<i32>(firstTrailingBit(-2147483647i ^ (4866i >> (var_0.c.x % 32u))), abs(var_0.a.x)) & _wgslsmith_mult_vec2_i32(vec2<i32>(abs(var_0.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, var_0.a.x, -37272i), ~vec3<i32>(1i, -2147483647i, var_3.a.x))), select(var_0.a, var_3.a, vec2<bool>(true, true)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-505f, _wgslsmith_f_op_f32(min(-135f, _wgslsmith_f_op_f32(f32(-1f) * -1062f))))), _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(299f))))));
    global0 = Struct_1(~(-global0.a) & func_2(true), select(firstTrailingBit(u_input.b.x), ~1u, global1[_wgslsmith_index_u32(select(countOneBits(_wgslsmith_add_u32(u_input.b.x, 21798u)), 11071u, global1[_wgslsmith_index_u32(select(max(u_input.a.x, 1u), arg_0, global1[_wgslsmith_index_u32(global2.x, 31u)]), 31u)]), 31u)]), ~(vec3<u32>(107178u, firstLeadingBit(arg_0), ~1u) >> ((vec3<u32>(4294967295u, u_input.b.x, global0.c.x) << ((vec3<u32>(u_input.a.x, 4294967295u, 0u) | global0.c) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = !vec4<bool>(true, false, !(!(global1[_wgslsmith_index_u32(4294967295u, 31u)] != false)), false);
    var var_2 = !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global0.b, global0.c.x), u_input.b), ~(~global0.c.xx)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 25725u), ~vec2<u32>(global2.x, 4294967295u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 1u), u_input.b))), 31u)];
    let var_3 = ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0, global2.x, 4294967295u, u_input.b.x), ~vec4<u32>(1355u, 1u, 78997u, 32181u)) >> (firstLeadingBit(firstLeadingBit(vec4<u32>(arg_0, arg_0, 4294967295u, global2.x))) % vec4<u32>(32u)), firstLeadingBit(~vec4<u32>(18886u, arg_0, 0u, global2.x)));
    return Struct_1(vec2<i32>(firstTrailingBit(global0.a.x), ~0i), arg_0, _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(arg_0, 4294967295u, global2.x)), ~vec3<u32>(0u, 16711u, u_input.b.x), vec3<u32>(arg_0, var_3.x, u_input.a.x)) | ~var_3.www, ~global0.c, global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_dot_vec4_u32(abs(~(vec4<u32>(42910u, u_input.b.x, u_input.a.x, u_input.b.x) & vec4<u32>(u_input.a.x, 39722u, global2.x, global2.x))), _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(global2.x, 4294967295u, 35303u, global0.b)), countOneBits(~vec4<u32>(2485u, u_input.a.x, 4294967295u, global2.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(f32(-1f) * -527f), _wgslsmith_f_op_f32(-1830f * -677f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-217f + 1954f), -754f, _wgslsmith_f_op_f32(min(-1661f, 604f))))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1008f))), -907f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1222f, 414f, -2688f))))))));
    var var_2 = firstTrailingBit(var_0.b) ^ 19835u;
    global0 = Struct_1(var_0.a, 10934u, var_0.c << (countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), vec2<u32>(18612u, global0.c.x)), u_input.a.x, 29700u)) % vec3<u32>(32u)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, var_1.x, var_1.x, 1000f))))), vec4<f32>(_wgslsmith_f_op_f32(-152f * -910f), var_1.x, var_1.x, var_1.x), !(!global1[_wgslsmith_index_u32(1u, 31u)])))));
    var var_4 = Struct_1(vec2<i32>(global0.a.x, -9448i), 73189u, _wgslsmith_div_vec3_u32(reverseBits(var_0.c ^ global0.c), global0.c));
    let x = u_input.a;
    s_output = StorageBuffer(-global0.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-var_3))), _wgslsmith_f_op_vec2_f32(select(var_3.wz, vec2<f32>(1f, 1f), vec2<bool>(!all(vec3<bool>(false, global1[_wgslsmith_index_u32(global2.x, 31u)], true)), false))), -312f, -func_1(firstLeadingBit(u_input.b.x | 1u)).a);
}

