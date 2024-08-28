struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -54260i, i32(-2147483648), 60260i);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1385f, 2328f, 458f), vec3<u32>(39949u, 0u, 63495u), 1u);

var<private> global2: f32;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: array<vec2<i32>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(global1.a, global1.b, u_input.c);
    let var_1 = vec2<bool>(true, any(vec2<bool>(true, true)) != !any(!vec4<bool>(global3.x, false, true, true)));
    global3 = select(!select(var_1, var_1, any(!vec4<bool>(global3.x, false, false, global3.x))), !select(var_1, var_1, false), !var_1);
    global1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)), var_0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.a.x), abs(vec3<u32>(u_input.c ^ global1.b.x, _wgslsmith_dot_vec2_u32(var_0.b.zx, firstLeadingBit(vec2<u32>(u_input.c, 1u))), 4294967295u)), ~u_input.c);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1996f * global1.a.x)) - 1695f);
    return var_0.a.x;
}

fn func_2() -> Struct_1 {
    global2 = _wgslsmith_div_f32(1136f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.x * global1.a.x), _wgslsmith_f_op_f32(global1.a.x - global1.a.x)) - _wgslsmith_f_op_f32(func_3()))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-352f)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(step(global1.a.x, -1927f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-242f * 1267f), -592f, -384f), global1.a)), vec3<u32>(u_input.c, select(_wgslsmith_sub_u32(global1.c, u_input.c), _wgslsmith_add_u32(1u, 91356u), false) & 48515u, ~global1.b.x), abs(_wgslsmith_sub_u32(1u, u_input.c << (~global1.c % 32u))));
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-1412f + global1.a.x), global1.a.x))))), vec3<u32>(min(~(~1u), 1u), global1.b.x, global1.b.x), ~31453u ^ global1.c);
    var var_1 = 770f;
    global4 = array<vec2<i32>, 15>();
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -107f), -903f), ~vec3<u32>(global1.c, var_0.c, global1.c), firstTrailingBit(1u));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: vec4<i32>) -> vec2<bool> {
    global4 = array<vec2<i32>, 15>();
    let var_0 = arg_0;
    return select(select(!(!select(vec2<bool>(false, false), vec2<bool>(global3.x, true), vec2<bool>(true, global3.x))), !select(!vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), vec2<bool>(false, true)), vec2<bool>(any(vec2<bool>(false, global3.x)), true)), !select(select(!vec2<bool>(false, global3.x), vec2<bool>(global3.x, global3.x), !global3.x), !(!vec2<bool>(global3.x, global3.x)), any(vec4<bool>(global3.x, global3.x, false, true))), any(!select(select(vec4<bool>(global3.x, false, false, false), vec4<bool>(global3.x, true, global3.x, true), vec4<bool>(global3.x, global3.x, false, true)), vec4<bool>(global3.x, false, global3.x, global3.x), select(vec4<bool>(true, global3.x, global3.x, true), vec4<bool>(global3.x, global3.x, true, true), global3.x))));
}

fn func_1() -> f32 {
    global3 = select(!(!vec2<bool>(false, true && global3.x)), func_4(func_2(), _wgslsmith_add_u32(~max(global1.b.x, 4294967295u), firstTrailingBit(global1.b.x >> (u_input.c % 32u))), _wgslsmith_div_u32(max(global1.b.x, _wgslsmith_sub_u32(u_input.c, global1.b.x)), global1.b.x >> (u_input.c % 32u)), _wgslsmith_div_vec4_i32(~u_input.a >> (select(vec4<u32>(1u, 4294967295u, global1.b.x, u_input.c), vec4<u32>(56449u, u_input.c, u_input.c, 0u), vec4<bool>(global3.x, false, global3.x, global3.x)) % vec4<u32>(32u)), vec4<i32>(-20290i, _wgslsmith_mod_i32(16504i, -40755i), -1i, global0.x))), !func_4(func_2(), global1.c, global1.c | 32867u, -u_input.a));
    var var_0 = Struct_1(vec3<f32>(561f, global1.a.x, 2415f), ~select(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global1.b, global1.b), ~vec3<u32>(global1.b.x, global1.c, 15561u)), global1.b, global3.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1596u, 29747u, u_input.c), _wgslsmith_mod_vec3_u32(abs(global1.b), ~global1.b), ~func_2().b), abs(~(global1.b ^ global1.b))));
    global0 = vec4<i32>(0i | (i32(-1i) * -_wgslsmith_mult_i32(global0.x, global0.x)), ~(-_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.a.wyw), _wgslsmith_div_vec3_i32(u_input.a.xyy, vec3<i32>(global0.x, -2147483647i, u_input.a.x)))), 0i, global0.x);
    var var_1 = -255f;
    let var_2 = all(vec3<bool>(global3.x, u_input.b > _wgslsmith_dot_vec4_i32(abs(u_input.a), vec4<i32>(20120i, 0i, u_input.b, global0.x) ^ vec4<i32>(global0.x, u_input.b, u_input.b, -2147483647i)), global3.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-229f * _wgslsmith_f_op_f32(global1.a.x * -1897f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec2<i32>, 15>();
    let var_0 = -43662i;
    global4 = array<vec2<i32>, 15>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x, _wgslsmith_f_op_f32(abs(1135f))) * _wgslsmith_f_op_vec3_f32(trunc(global1.a))) + vec3<f32>(_wgslsmith_f_op_f32(590f + global1.a.x), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) + _wgslsmith_f_op_f32(-949f * 390f)))), vec3<u32>(_wgslsmith_mult_u32(~min(global1.c, u_input.c), u_input.c), 4294967295u, max((u_input.c | global1.b.x) << (1u % 32u), global1.b.x)), firstLeadingBit(min(~10342u, countOneBits(~global1.b.x))));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), var_1.a.x, _wgslsmith_div_f32(var_1.a.x, _wgslsmith_div_f32(-1415f, var_1.a.x))), max(func_2().b ^ ~vec3<u32>(0u, var_1.b.x, 30611u), vec3<u32>(var_1.b.x, 1433u, u_input.c)), _wgslsmith_dot_vec2_u32(global1.b.yy, var_1.b.zx | ~vec2<u32>(u_input.c, 1u)));
    global3 = vec2<bool>(true, true);
    var var_3 = select(!vec2<bool>(false, global3.x), vec2<bool>(any(vec2<bool>(true, true)) | ((41288u >> (var_1.b.x % 32u)) >= _wgslsmith_div_u32(u_input.c, 1u)), ((global0.x << (31411u % 32u)) > 39732i) || true), global3.x);
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.x), var_2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-vec4<i32>(11698i & u_input.b, ~(-1i), _wgslsmith_div_i32(global0.x, -38007i), var_0)), 1000f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-551f - _wgslsmith_f_op_f32(-var_4.x)) - 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(1600f - 1054f)))), -1663f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, _wgslsmith_f_op_f32(min(global1.a.x, var_2.a.x)), -561f, global1.a.x) + vec4<f32>(_wgslsmith_f_op_f32(-var_2.a.x), 1000f, global1.a.x, _wgslsmith_f_op_f32(-var_1.a.x)))));
}

