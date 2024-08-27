struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11>;

var<private> global1: Struct_1;

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(306f, -1000f, 1488f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), -1i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-812f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) + -570f), _wgslsmith_div_f32(1000f, -725f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(602f, -1000f, -664f) * vec3<f32>(540f, -857f, -448f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-391f, -369f, 558f), vec3<f32>(384f, -1000f, 225f), true)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-933f, -122f, 157f) + vec3<f32>(734f, -347f, -138f))))), Struct_1(max(_wgslsmith_dot_vec2_i32(min(global1.b, vec2<i32>(26250i, u_input.b.x)), -vec2<i32>(-61334i, -2147483647i)), countOneBits(-2147483647i)), vec2<i32>(_wgslsmith_mod_i32(global1.b.x, u_input.c.x) & ~global1.b.x, select(reverseBits(2147483647i), select(-1i, -1i, true), true)), global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(829f, -254f)))))), select(select(select(!vec4<bool>(global1.c.x, false, false, global1.c.x), !vec4<bool>(global2.x, global2.x, false, global2.x), true), vec4<bool>(global1.c.x | global1.c.x, true, global2.x, any(vec2<bool>(false, false))), !vec4<bool>(true, false, global2.x, global1.c.x)), !select(!vec4<bool>(global2.x, true, global1.c.x, global1.c.x), vec4<bool>(false, true, global2.x, global2.x), all(global0[_wgslsmith_index_u32(78627u, 11u)])), true & any(!global0[_wgslsmith_index_u32(39060u, 11u)])));
    let var_1 = Struct_3(vec4<bool>(false, true, all(var_0.e), true));
    let var_2 = Struct_3(vec4<bool>(global2.x, true, true, !(!global1.c.x) | false));
    let var_3 = min(-2147483647i, (_wgslsmith_dot_vec2_i32(min(vec2<i32>(global1.a, var_0.a.b), u_input.c.xy), vec2<i32>(35669i, global1.b.x)) | countOneBits(var_0.a.b)) >> (u_input.d.x % 32u));
    global2 = select(!vec2<bool>(var_2.a.x, false), vec2<bool>(true, true), true);
    return var_0.a.a.x;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(-423f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -315f), _wgslsmith_f_op_f32(f32(-1f) * -293f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3())))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1590f - -1363f), -385f)));
    global1 = Struct_1(0i, vec2<i32>(min(-u_input.b.x, select(-2147483647i, _wgslsmith_div_i32(u_input.b.x, 2147483647i), all(vec4<bool>(global1.c.x, true, false, true)))), -(~2147483647i)), select(!global1.c, select(select(!vec2<bool>(true, global2.x), vec2<bool>(false, true), false), vec2<bool>(true, true), true), vec2<bool>(global2.x, global1.c.x)));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(global1.a, ~21922i), firstLeadingBit(_wgslsmith_div_vec2_i32(-u_input.b.yz, vec2<i32>(select(global1.b.x, u_input.c.x, global2.x), global1.b.x))), select(~global1.b, _wgslsmith_div_vec2_i32(firstLeadingBit(~u_input.b.xw), select(global1.b, vec2<i32>(global1.b.x, global1.b.x), vec2<bool>(global1.c.x, global2.x)) | vec2<i32>(2147483647i, 8400i)), vec2<bool>(true, select(true, true, all(global0[_wgslsmith_index_u32(u_input.d.x, 11u)])))));
    global1 = Struct_1(abs(70990i) | -global1.a, -vec2<i32>(-(~11307i), var_1.x), global1.c);
    let var_2 = global1.b;
    return false;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1633f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(628f)) * _wgslsmith_f_op_f32(trunc(300f))), 1243f), global1.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1216f, 254f, 999f))) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(871f, 704f, 485f), vec3<f32>(1971f, 728f, 920f)))))), Struct_1(_wgslsmith_add_i32(u_input.b.x, 0i), _wgslsmith_clamp_vec2_i32(global1.b, select(vec2<i32>(2147483647i, global1.a), vec2<i32>(u_input.c.x, u_input.b.x), vec2<bool>(true, true)), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(global1.b.x, global1.b.x)), abs(vec2<i32>(-1i, global1.b.x)))), vec2<bool>(false, false)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(412f)))))), arg_0.a);
    global2 = global1.c;
    return var_0.a;
}

fn func_1() -> Struct_2 {
    return func_4(Struct_3(vec4<bool>(any(global0[_wgslsmith_index_u32(32557u, 11u)]), any(vec2<bool>(global2.x, global2.x)), func_2(), select(all(vec4<bool>(false, false, true, global1.c.x)), true, global1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(276f, -146f, -919f), vec3<f32>(1000f, -216f, -486f), global2.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -333f, 613f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1377f, 626f, -1565f))), global0[_wgslsmith_index_u32(~u_input.d.x, 11u)])))), Struct_1(select(u_input.b.x, 1i, false), reverseBits(~vec2<i32>(-9086i, u_input.c.x)) ^ ~_wgslsmith_sub_vec2_i32(vec2<i32>(1106i, -2147483647i), global1.b), vec2<bool>(true, !(global1.b.x >= 25613i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(385f)) + _wgslsmith_f_op_f32(select(-672f, _wgslsmith_f_op_f32(sign(1f)), global1.c.x))), vec4<bool>(false, (~global1.a & u_input.c.x) >= -global1.a, all(select(vec4<bool>(global1.c.x, false, true, global1.c.x), vec4<bool>(true, false, global2.x, false), true)), false));
    global2 = select(var_0.c.c, select(vec2<bool>(all(vec3<bool>(true, var_0.e.x, true)), global1.c.x), !select(vec2<bool>(global1.c.x, true), var_0.c.c, !vec2<bool>(global1.c.x, false)), all(select(vec3<bool>(true, global2.x, false), !vec3<bool>(global1.c.x, global1.c.x, true), !global0[_wgslsmith_index_u32(0u, 11u)]))), var_0.c.c);
    var var_1 = vec3<i32>(global1.b.x, -var_0.a.b >> (u_input.a.x % 32u), ~(-2763i));
    let var_2 = global1.b.x;
    var var_3 = select(!vec3<bool>(global2.x, global2.x, var_0.c.c.x), select(!vec3<bool>(0i > u_input.b.x, func_2(), global2.x), vec3<bool>(true, var_0.c.c.x, false), select(vec3<bool>(true, global1.c.x & true, global1.c.x || global2.x), var_0.e.zzw, func_2())), select(!select(var_0.e.zzy, vec3<bool>(global2.x, global1.c.x, global1.c.x), global0[_wgslsmith_index_u32(abs(u_input.d.x), 11u)]), vec3<bool>(true, var_0.b.x == var_0.b.x, false), 43119u >= u_input.a.x));
    var var_4 = vec2<u32>((~u_input.d.x & 1u) | ~(~55321u), _wgslsmith_sub_u32(u_input.e, 0u)) >> (u_input.d.yz % vec2<u32>(32u));
    var_3 = select(!(!vec3<bool>(true, any(vec2<bool>(global1.c.x, true)), false)), select(vec3<bool>(var_0.a.b <= _wgslsmith_mod_i32(var_1.x, 2147483647i), any(!vec3<bool>(global2.x, var_0.c.c.x, global2.x)), all(vec4<bool>(global2.x, global1.c.x, true, true))), select(vec3<bool>(1u >= var_4.x, var_0.e.x, !var_0.c.c.x), select(var_0.e.yyz, select(vec3<bool>(false, true, false), var_0.e.zwz, var_0.e.x), true), true), true), vec3<bool>(firstLeadingBit(var_4.x) >= ~firstTrailingBit(0u), all(global0[_wgslsmith_index_u32(countOneBits(13170u), 11u)]) & (u_input.c.x <= _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.b, u_input.b.x, 2147483647i), vec3<i32>(-18195i, global1.b.x, -66300i))), true));
    var var_5 = ~(~(-_wgslsmith_sub_i32(var_0.a.b, u_input.c.x)) & u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_i32(~(select(vec2<i32>(var_0.c.a, var_0.c.b.x), vec2<i32>(var_1.x, var_0.c.b.x), vec2<bool>(false, var_3.x)) >> (countOneBits(vec2<u32>(u_input.d.x, var_4.x)) % vec2<u32>(32u))), ~(~(~var_0.c.b)), vec2<i32>(u_input.b.x, max(~31890i, 2147483647i))), ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(52758u, 4294967295u, var_4.x), reverseBits(u_input.d.wzz))), min(vec2<u32>(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(0u, u_input.a.x, 37302u, var_4.x)), ~var_4.x), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_4.x), u_input.d.wz, vec2<u32>(u_input.d.x, 4294967295u))) >> (~u_input.a % vec2<u32>(32u)));
}

