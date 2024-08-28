struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<u32, 20>;

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> Struct_1 {
    var var_0 = u_input.a;
    let var_1 = !global0.b.d;
    let var_2 = global1[_wgslsmith_index_u32(global0.a.x >> (~firstLeadingBit(arg_0.x) % 32u), 32u)];
    let var_3 = vec3<bool>(any(!(!select(vec3<bool>(global0.b.d.x, true, global0.b.d.x), vec3<bool>(true, var_1.x, true), vec3<bool>(global0.b.d.x, true, false)))), all(!vec2<bool>(global0.b.d.x, global0.b.d.x)), var_1.x);
    var var_4 = vec3<u32>(u_input.b.x, max(_wgslsmith_clamp_u32(~u_input.b.x, arg_0.x, u_input.b.x), global2[_wgslsmith_index_u32((_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 20u)], 20u)]), arg_0.zxz) & countOneBits(89272u)) | max(~arg_0.x, 0u), 20u)]), global3.x);
    return global0.b;
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = global0.a.x;
    let var_1 = Struct_1(reverseBits(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(min(u_input.a.zyw, vec3<i32>(31598i, global0.b.a.x, u_input.e.x)), func_2(vec4<u32>(39962u, 27756u, global3.x, global0.a.x), global2[_wgslsmith_index_u32(1u, 20u)]).a, -global0.b.a), u_input.d)), global0.b.b, vec2<i32>(i32(-1i) * -firstTrailingBit(1i), i32(-1i) * -1i), !(!select(!global0.b.d, global0.b.d, !vec4<bool>(false, true, global0.b.d.x, global0.b.d.x))));
    var var_2 = select(true, var_1.d.x, global0.b.d.x);
    let var_3 = any(!func_2(max(~u_input.b, vec4<u32>(8741u, 4294967295u, global3.x, arg_0) << (vec4<u32>(22189u, 4294967295u, 100976u, 48811u) % vec4<u32>(32u))), global3.x).d.yzw);
    global3 = ~countOneBits(reverseBits(abs(vec2<u32>(global3.x, u_input.b.x)) << (~global0.a.zz % vec2<u32>(32u))));
    return select(-vec3<i32>(~(-52578i), _wgslsmith_add_i32(firstTrailingBit(-24988i), u_input.c.x & 0i), _wgslsmith_div_i32(global0.b.c.x ^ global0.b.a.x, 1i)), vec3<i32>(i32(-1i) * -2167i, 2147483647i, reverseBits(-2147483647i)), !func_2(firstTrailingBit(min(u_input.b, vec4<u32>(0u, arg_0, u_input.b.x, u_input.b.x))), ~116640u).d.x);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    global1 = array<Struct_2, 32>();
    let var_0 = func_2(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x >> (global0.a.x % 32u), 1u), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.a.x, 1u), u_input.b.wx, global0.a.xy), ~u_input.b.xx, vec2<u32>(1u, global3.x))));
    let var_1 = ~(-abs(i32(-1i) * -25199i));
    var var_2 = Struct_1(select(global0.b.a ^ (vec3<i32>(var_1, 0i, -7449i) << (vec3<u32>(global2[_wgslsmith_index_u32(global3.x, 20u)], 14161u, global0.a.x) % vec3<u32>(32u))), arg_0.a, (global0.b.b > 988f) | true) & func_3(1u), 113f, global0.b.a.xx, global0.b.d);
    let var_3 = Struct_1(var_0.a, 2072f, ~(~(-var_2.a.yz & _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.c.x, -19199i), vec2<i32>(var_2.a.x, arg_0.c.x)))), !(!vec4<bool>(true, var_0.d.x, !var_2.d.x, all(var_2.d.xwx))));
    return StorageBuffer(~abs(global2[_wgslsmith_index_u32(countOneBits(0u | global3.x), 20u)]), vec3<u32>(select(8790u, global3.x, var_0.d.x), firstLeadingBit(u_input.b.x), select(4294967295u, 1u, var_3.d.x)), abs(4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_f_op_f32(step(global0.b.b, 1655f));
    let var_1 = global0.b;
    global3 = _wgslsmith_mod_vec2_u32(u_input.b.wx << (u_input.b.yy % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(~(~vec2<u32>(global2[_wgslsmith_index_u32(global0.a.x, 20u)], 4294967295u) & firstLeadingBit(global0.a.zz)), ~(u_input.b.xz >> (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))));
    global1 = array<Struct_2, 32>();
    let var_2 = firstLeadingBit(vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.e.x, global0.b.a.x), abs(vec2<i32>(var_1.c.x, -2147483647i)), global0.b.c));
    global2 = array<u32, 20>();
    let x = u_input.a;
    s_output = func_1(global0.b);
}

