struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(true, false, true, true, false, false, false, true, false, true, false, false, true, true, false, true, true, true, true);

var<private> global1: array<i32, 6> = array<i32, 6>(0i, 11727i, -30484i, i32(-2147483648), 9577i, i32(-2147483648));

var<private> global2: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<u32>(4294967295u, 22668u, 0u), vec3<u32>(102691u, 1u, 4294967295u)), Struct_1(vec3<u32>(27711u, 1u, 1u), vec3<u32>(18712u, 53711u, 4294967295u)), Struct_1(vec3<u32>(13132u, 4294967295u, 22132u), vec3<u32>(2919u, 1u, 33556u)), Struct_1(vec3<u32>(34379u, 0u, 76345u), vec3<u32>(4294967295u, 5329u, 16535u)), Struct_1(vec3<u32>(1u, 50030u, 1u), vec3<u32>(41740u, 0u, 1u)), Struct_1(vec3<u32>(1u, 3957u, 1259u), vec3<u32>(49546u, 1u, 54282u)), Struct_1(vec3<u32>(23011u, 4294967295u, 33207u), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(61056u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u)), Struct_1(vec3<u32>(14144u, 4294967295u, 30688u), vec3<u32>(69208u, 1u, 37686u)), Struct_1(vec3<u32>(19201u, 4294967295u, 0u), vec3<u32>(0u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 0u, 53979u), vec3<u32>(4294967295u, 56173u, 106694u)), Struct_1(vec3<u32>(98845u, 107995u, 45881u), vec3<u32>(0u, 4382u, 4294967295u)), Struct_1(vec3<u32>(0u, 64039u, 4426u), vec3<u32>(4294967295u, 30666u, 7606u)), Struct_1(vec3<u32>(0u, 36675u, 1u), vec3<u32>(1u, 22561u, 3230u)), Struct_1(vec3<u32>(1862u, 4294967295u, 70668u), vec3<u32>(46618u, 1u, 70403u)), Struct_1(vec3<u32>(11533u, 63250u, 4294967295u), vec3<u32>(26285u, 0u, 4294967295u)), Struct_1(vec3<u32>(29499u, 88197u, 49907u), vec3<u32>(75761u, 4294967295u, 12293u)), Struct_1(vec3<u32>(4294967295u, 673u, 1u), vec3<u32>(9493u, 4294967295u, 8617u)), Struct_1(vec3<u32>(0u, 1u, 1u), vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<u32>(20113u, 2685u, 42571u), vec3<u32>(4979u, 1u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(30708u, 27708u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 73547u, 1u)), Struct_1(vec3<u32>(0u, 8203u, 4294967295u), vec3<u32>(22532u, 35781u, 1u)));

var<private> global3: array<f32, 23>;

var<private> global4: Struct_1;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = ~24685u;
    global2 = array<Struct_1, 23>();
    global4 = Struct_1(u_input.a, global4.b);
    global1 = array<i32, 6>();
    var var_1 = global4.a;
    return var_1.x;
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_1(arg_2.yzy, select(vec3<u32>(~u_input.a.x, ~37947u & _wgslsmith_add_u32(arg_2.x, u_input.b), 1u), arg_2.xzx, vec3<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(global4.a.x, 19u)], global0[_wgslsmith_index_u32(12703u, 19u)], global0[_wgslsmith_index_u32(56968u, 19u)])), false, !global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4.a.x, 58643u), 19u)])));
    return u_input.c.x;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> u32 {
    global3 = array<f32, 23>();
    global2 = array<Struct_1, 23>();
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(u_input.b, func_2(1342f)), u_input.c.x, max(arg_2.a.x, _wgslsmith_clamp_u32(15707u, ~global4.b.x, _wgslsmith_div_u32(arg_2.a.x, arg_1)))), _wgslsmith_add_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(~15024u, ~arg_2.b.x), ~arg_1), vec3<u32>(global4.b.x, arg_1, arg_1)));
    let var_1 = abs(vec2<i32>(-1i, -45369i >> (var_0.b.x % 32u)));
    global1 = array<i32, 6>();
    return max(arg_2.a.x | ~func_3(_wgslsmith_add_i32(0i, -1i), 10065i, _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.a.x, 115329u, u_input.c.x), vec4<u32>(global4.b.x, 0u, arg_1, 64259u))), _wgslsmith_mult_u32(~(u_input.c.x ^ arg_2.a.x) | _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, global4.a.x), _wgslsmith_mod_u32(global4.b.x, 1u), 29391u), _wgslsmith_sub_u32(0u, arg_1 ^ ~var_0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(1737u, 23u)];
    var var_1 = !(!(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], _wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_0.b.x, 23u)], global3[_wgslsmith_index_u32(11188u, 23u)])) != _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~u_input.b, 23u)] + global3[_wgslsmith_index_u32(~var_0.b.x, 23u)])));
    global4 = global2[_wgslsmith_index_u32(func_1(countOneBits(-2147483647i), u_input.b, Struct_1(var_0.a, global4.a)), 23u)];
    global3 = array<f32, 23>();
    global3 = array<f32, 23>();
    global1 = array<i32, 6>();
    var var_2 = ~(~min(min(vec2<u32>(u_input.c.x, 1u), min(global4.b.yy, vec2<u32>(global4.b.x, var_0.b.x))), ~vec2<u32>(global4.a.x, global4.b.x) | (global4.b.xz >> (vec2<u32>(u_input.c.x, var_0.b.x) % vec2<u32>(32u)))));
    let var_3 = global1[_wgslsmith_index_u32(global4.b.x, 6u)] & 1i;
    var_1 = false | (all(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(global4.b.x, 19u)]), vec2<bool>(global0[_wgslsmith_index_u32(1u, 19u)], true), true)) || true);
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~max(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, var_2.x), u_input.a.zz), global4.a.yx), ~global4.a.xx), 23u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1361f, -789f), -208f, any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], true)))))))), (firstTrailingBit(~vec3<i32>(1i, 1i, 2147483647i)) >> (firstLeadingBit(~vec3<u32>(u_input.a.x, 131647u, global4.b.x)) % vec3<u32>(32u))) | _wgslsmith_add_vec3_i32(vec3<i32>(10101i >> (var_0.a.x % 32u), abs(var_3), firstTrailingBit(global1[_wgslsmith_index_u32(1u, 6u)])), vec3<i32>(var_3, -98717i, global1[_wgslsmith_index_u32(47749u, 6u)]) | ~vec3<i32>(global1[_wgslsmith_index_u32(global4.a.x, 6u)], var_3, global1[_wgslsmith_index_u32(var_0.a.x, 6u)])));
}

