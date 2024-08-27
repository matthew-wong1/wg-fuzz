struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<i32>(21133i, 54142i, 2147483647i), -22448i, 2147483647i);

var<private> global1: vec3<bool>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_2, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    global3 = array<Struct_2, 21>();
    var var_0 = vec4<u32>(abs(12788u) << ((1u ^ select(46958u, u_input.a, arg_0.x)) % 32u), _wgslsmith_mod_u32(32834u, u_input.c), u_input.c, u_input.a) >> ((_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a, u_input.a, 4294967295u), vec4<u32>(68853u, 3322u, 4294967295u, 4294967295u), vec4<u32>(u_input.a, 3134u, 0u, u_input.c)), vec4<u32>(70291u, 1u, u_input.c, 36902u)), ~(~vec4<u32>(u_input.a, u_input.c, 115307u, 33482u))) | (abs(vec4<u32>(42133u, 34429u, 25848u, u_input.a) | vec4<u32>(u_input.c, 0u, u_input.c, 4294967295u)) << (vec4<u32>(43336u, 60331u, firstLeadingBit(u_input.a), u_input.c >> (u_input.a % 32u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_1 = global3[_wgslsmith_index_u32(u_input.a, 21u)];
    let var_2 = Struct_1(select(abs(vec3<i32>(arg_1.c, -14917i, 7386i) ^ (vec3<i32>(global2.c.c, 0i, global2.a.c) << (vec3<u32>(var_0.x, u_input.a, var_0.x) % vec3<u32>(32u)))), vec3<i32>(-firstTrailingBit(global0.b), -min(var_1.c.a.x, var_1.a.a.x), arg_1.b), arg_0), _wgslsmith_add_i32(_wgslsmith_add_i32(abs(u_input.e), firstLeadingBit(~(-1i))), firstLeadingBit(arg_1.b)), 0i);
    var_1 = global3[_wgslsmith_index_u32(19734u, 21u)];
    return i32(-1i) * -11881i;
}

fn func_2() -> vec3<bool> {
    global2 = Struct_2(global2.c, global2.c, Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(2911i, -1i, global2.a.b), u_input.d), abs(u_input.d & vec3<i32>(u_input.e, 40358i, global0.b))), func_3(vec3<bool>(false, true, true), global2.b), -18674i), -1000f);
    var var_0 = vec4<u32>(u_input.c, max(_wgslsmith_dot_vec4_u32(vec4<u32>(14995u, u_input.c, u_input.a, ~u_input.c), vec4<u32>(u_input.c, _wgslsmith_mult_u32(52362u, u_input.c), u_input.a, u_input.c)), u_input.a), ~u_input.a << ((~_wgslsmith_clamp_u32(102337u, u_input.c, u_input.a) >> (1u % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstLeadingBit(~0u), 4294967295u, max(u_input.c & u_input.c, u_input.c)), 0u));
    global1 = vec3<bool>(global1.x, !(!all(vec3<bool>(global1.x, global1.x, global1.x)) | !global1.x), all(select(!vec3<bool>(global1.x, global1.x, global1.x), !select(vec3<bool>(false, false, true), vec3<bool>(global1.x, false, true), false), vec3<bool>(global1.x, !global1.x, true))));
    global0 = global2.c;
    var var_1 = ~global2.a.b;
    return !vec3<bool>(all(!(!vec4<bool>(true, global1.x, global1.x, true))), !global1.x, true);
}

fn func_1(arg_0: u32, arg_1: u32) -> u32 {
    global3 = array<Struct_2, 21>();
    global1 = select(!vec3<bool>(true, true, countOneBits(1u) >= _wgslsmith_mod_u32(arg_0, arg_1)), func_2(), vec3<bool>(!global1.x, !global1.x, global1.x));
    var var_0 = global2.a;
    var_0 = global2.c;
    global0 = Struct_1(countOneBits(_wgslsmith_mult_vec3_i32(var_0.a, vec3<i32>(var_0.b, 0i, u_input.d.x) ^ vec3<i32>(0i, -14743i, -1i)) >> ((~vec3<u32>(4294967295u, arg_0, 0u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, arg_0, 30733u), vec3<u32>(0u, 0u, 22321u)) % vec3<u32>(32u))) % vec3<u32>(32u))), 21080i, _wgslsmith_mod_i32(firstTrailingBit(firstTrailingBit(global0.c)), (select(u_input.d.x, var_0.c, false) << (20520u % 32u)) ^ (i32(-1i) * -u_input.b)));
    return firstTrailingBit(_wgslsmith_mult_u32(13255u, _wgslsmith_add_u32(u_input.c | _wgslsmith_dot_vec3_u32(vec3<u32>(23586u, arg_1, arg_1), vec3<u32>(arg_1, 26703u, arg_0)), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(all(vec2<bool>(any(select(vec2<bool>(false, true), global1.xy, false)), ~u_input.c == func_1(u_input.a, 0u))), true, !(!global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(global0.c) & u_input.d.x, -11969i, 0i);
}

