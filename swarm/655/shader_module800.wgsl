struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<i32>;

var<private> global2: Struct_3;

var<private> global3: array<f32, 24> = array<f32, 24>(819f, -1515f, 933f, 659f, -435f, 292f, 520f, 583f, -657f, 281f, -1000f, 102f, -1646f, 417f, 1978f, -2074f, 469f, -724f, 636f, -373f, -1106f, 297f, -488f, -192f);

var<private> global4: array<bool, 3>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_3(!(!(_wgslsmith_mod_u32(u_input.c, 31718u) <= ~4294967295u)), global2.b);
    global0 = Struct_1(_wgslsmith_sub_i32(~0i, ~(~15705i)));
    let var_1 = global1.x;
    var_0 = Struct_3(global4[_wgslsmith_index_u32(min(u_input.c, _wgslsmith_clamp_u32(37499u, ~u_input.c, ~(~16838u))), 3u)], Struct_2(Struct_1(-21960i | var_0.b.b), global2.b.b, global2.b.c));
    global4 = array<bool, 3>();
    return 33041u;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_u32(reverseBits(min(vec4<u32>(77985u, u_input.c, u_input.c, u_input.c), vec4<u32>(u_input.c, u_input.c, 4294967295u, 28622u) | vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u)) & _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<u32>(55797u, 23870u, 43318u, u_input.c) << (vec4<u32>(u_input.c, u_input.c, 0u, 46987u) % vec4<u32>(32u)))), _wgslsmith_sub_vec4_u32(min(vec4<u32>(func_3(true, vec2<bool>(global4[_wgslsmith_index_u32(1u, 3u)], global4[_wgslsmith_index_u32(1u, 3u)])), u_input.c, u_input.c, _wgslsmith_mult_u32(1u, u_input.c)), select(~vec4<u32>(47931u, u_input.c, 102909u, u_input.c), vec4<u32>(u_input.c, 9416u, u_input.c, u_input.c), global2.b.c.x)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, u_input.c, 1u, 4294967295u) ^ vec4<u32>(86877u, u_input.c, 0u, 4294967295u), vec4<u32>(1u, u_input.c, u_input.c, u_input.c) & vec4<u32>(u_input.c, u_input.c, 64896u, u_input.c), vec4<u32>(u_input.c, 1670u, 52526u, u_input.c))), abs(min(vec4<u32>(u_input.c, ~20294u, ~62669u, firstLeadingBit(4294967295u)), vec4<u32>(~u_input.c, 1u, ~u_input.c, 1u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(max(~var_0.x, var_0.x), 24u)]), global3[_wgslsmith_index_u32(u_input.c, 24u)])), _wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(func_3(all(global2.b.c), global2.b.c.zx), 24u)])));
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(var_0, reverseBits(var_0))), var_0.wz) & vec2<u32>(_wgslsmith_mult_u32(1u, var_0.x), u_input.c);
    let var_3 = Struct_3(global4[_wgslsmith_index_u32(var_0.x, 3u)], Struct_2(Struct_1(global0.a), _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(global2.b.a.a, global2.b.b, global0.a), select(41077i, ~(-61680i), global4[_wgslsmith_index_u32(1u, 3u)])), !(!(!global2.b.c))));
    var var_4 = global0.a;
    return Struct_2(Struct_1(2147483647i), -19561i, global2.b.c);
}

fn func_1() -> Struct_1 {
    let var_0 = ~38244u;
    let var_1 = func_2();
    global0 = func_2().a;
    global0 = func_2().a;
    global3 = array<f32, 24>();
    return Struct_1(_wgslsmith_add_i32(global1.x | ~_wgslsmith_dot_vec3_i32(u_input.b.xzz, vec3<i32>(global0.a, global2.b.b, 2147483647i)), global0.a));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    global1 = firstLeadingBit(~reverseBits(u_input.b.wwy));
    global3 = array<f32, 24>();
    let var_0 = false;
    let var_1 = Struct_3(all(!(!(!global2.b.c))), global2.b);
    global0 = arg_1;
    return 1i | -(_wgslsmith_mod_i32(_wgslsmith_sub_i32(arg_1.a, 100301i), -global2.b.a.a) | -arg_1.a);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = Struct_4(abs(~(vec3<u32>(u_input.c, 26468u, 22970u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 1u, 4294967295u), vec3<u32>(u_input.c, 48580u, u_input.c)) % vec3<u32>(32u)))));
    global3 = array<f32, 24>();
    return StorageBuffer(arg_0, u_input.b, _wgslsmith_div_i32(2147483647i, arg_3.a.a), 67742u, arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2.b.c.xy;
    var_0 = !global2.b.c.yz;
    var_0 = !vec2<bool>(!(any(global2.b.c.zx) && all(vec2<bool>(global4[_wgslsmith_index_u32(u_input.c, 3u)], true))), true);
    global0 = Struct_1(-2147483647i);
    let var_1 = Struct_1(-global0.a);
    global0 = global2.b.a;
    let x = u_input.a;
    s_output = func_5(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, _wgslsmith_mult_i32(-2147483647i, global0.a), -3286i, -1271i), -u_input.b), u_input.b), func_4(Struct_2(func_1(), u_input.a, global2.b.c), var_1), firstLeadingBit(firstTrailingBit(global0.a)), Struct_2(Struct_1(-30775i), global2.b.b, vec3<bool>(select(var_0.x, true, select(global4[_wgslsmith_index_u32(1u, 3u)], var_0.x, global4[_wgslsmith_index_u32(1u, 3u)])), global4[_wgslsmith_index_u32(u_input.c, 3u)], any(select(vec4<bool>(global2.a, false, var_0.x, true), vec4<bool>(global4[_wgslsmith_index_u32(u_input.c, 3u)], false, true, true), vec4<bool>(false, global4[_wgslsmith_index_u32(1u, 3u)], var_0.x, global4[_wgslsmith_index_u32(33905u, 3u)]))))));
}

