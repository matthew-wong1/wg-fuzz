struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 71041u;

var<private> global1: array<bool, 2>;

var<private> global2: vec3<u32>;

var<private> global3: array<f32, 15>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: u32) -> i32 {
    global1 = array<bool, 2>();
    global0 = ~5495u;
    let var_0 = !(!(!(!select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(44774u, 2u)], true), global1[_wgslsmith_index_u32(global2.x, 2u)]))));
    global2 = max(_wgslsmith_clamp_vec3_u32(~(u_input.b << (u_input.a % vec3<u32>(32u))), u_input.c, vec3<u32>(~u_input.b.x, ~44208u, abs(8481u))) ^ vec3<u32>(u_input.b.x, firstLeadingBit(58327u), 88057u), ~(vec3<u32>(~38784u, 1u, max(17888u, 35636u)) ^ vec3<u32>(arg_2 >> (4294967295u % 32u), ~global2.x, ~u_input.c.x)));
    global3 = array<f32, 15>();
    return _wgslsmith_clamp_i32(2147483647i, -9835i, _wgslsmith_sub_i32(1i, _wgslsmith_mod_i32(1i, min(-2147483647i, arg_1))) << (_wgslsmith_clamp_u32(global2.x, global2.x, ~4294967295u & _wgslsmith_add_u32(global2.x, 20068u)) % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec3_u32(~countOneBits(_wgslsmith_mult_vec3_u32(u_input.c, vec3<u32>(4294967295u, 4294967295u, 0u) | u_input.c)), ~vec3<u32>(u_input.b.x, 21164u ^ global2.x, _wgslsmith_add_u32(global2.x | 4294967295u, max(0u, global2.x))), firstTrailingBit(_wgslsmith_mod_vec3_u32(~(~u_input.a), vec3<u32>(global2.x, 0u, 74325u) >> (u_input.c % vec3<u32>(32u)))));
    let var_1 = Struct_1(~max(func_3(firstTrailingBit(23618i), ~(-44125i), 1u), ~1i), (min(-vec2<i32>(-72304i, 9870i), vec2<i32>(1i, -1i)) << (_wgslsmith_clamp_vec2_u32(global2.yy, vec2<u32>(u_input.c.x, global2.x), vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b.x), u_input.c.yz)), global2.xz, var_0.xx) % vec2<u32>(32u)));
    var var_2 = Struct_1(_wgslsmith_add_i32(-1i, var_1.b.x), var_1.b);
    let var_3 = Struct_1(var_2.b.x | _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(var_2.b.x, 0i, -1i, var_1.a) | vec4<i32>(var_2.b.x, 1i, 46624i, var_1.a)), min(vec4<i32>(-1i, var_2.a, 11483i, var_2.b.x), ~vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a))), reverseBits(var_2.b));
    let var_4 = var_3;
    return var_3;
}

fn func_1() -> vec3<bool> {
    global1 = array<bool, 2>();
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(i32(-1i) * -431i, ~(-30142i)), 2147483647i, 1i), vec3<i32>(firstLeadingBit(-2147483647i), ~2147483647i, firstLeadingBit(4640i)) >> (reverseBits(u_input.b) % vec3<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(19668i, _wgslsmith_mult_i32(-23062i, 5103i)));
    var var_1 = func_2();
    global3 = array<f32, 15>();
    var var_2 = var_0;
    return select(vec3<bool>(true, !global1[_wgslsmith_index_u32(~u_input.b.x, 2u)] || any(!vec3<bool>(global1[_wgslsmith_index_u32(13743u, 2u)], false, false)), all(select(select(vec3<bool>(true, false, false), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], global1[_wgslsmith_index_u32(13584u, 2u)], global1[_wgslsmith_index_u32(global2.x, 2u)]), global1[_wgslsmith_index_u32(60287u, 2u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 2u)], false, false), vec3<bool>(false, global1[_wgslsmith_index_u32(32173u, 2u)], false), true), select(vec3<bool>(true, global1[_wgslsmith_index_u32(19022u, 2u)], false), vec3<bool>(true, global1[_wgslsmith_index_u32(46984u, 2u)], false), vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]))))), select(vec3<bool>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(u_input.b.x), u_input.a.x ^ global2.x, 58345u), 2u)], any(vec3<bool>(true, true, false)), false), select(!select(vec3<bool>(global1[_wgslsmith_index_u32(61344u, 2u)], global1[_wgslsmith_index_u32(global2.x, 2u)], global1[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec3<bool>(true, false, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], global1[_wgslsmith_index_u32(u_input.a.x, 2u)])), select(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(global2.x, 2u)], global1[_wgslsmith_index_u32(global2.x, 2u)]), vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], false, global1[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(true, false, false)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], true, true), any(vec4<bool>(false, global1[_wgslsmith_index_u32(global2.x, 2u)], global1[_wgslsmith_index_u32(21777u, 2u)], true))), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 15u)] <= -443f, global2.x > 1u, all(vec4<bool>(global1[_wgslsmith_index_u32(2628u, 2u)], false, true, global1[_wgslsmith_index_u32(36599u, 2u)])))), global1[_wgslsmith_index_u32(~reverseBits(0u), 2u)]), all(vec4<bool>(global1[_wgslsmith_index_u32(0u, 2u)], !any(vec2<bool>(true, false)), !any(vec2<bool>(false, global1[_wgslsmith_index_u32(17788u, 2u)])), any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], false, global1[_wgslsmith_index_u32(14136u, 2u)], false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 2>();
    var var_0 = select(vec3<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(1u, 2u)], true, true, true)) | (16471u > _wgslsmith_dot_vec2_u32(global2.xx, vec2<u32>(59077u, 12440u))), global1[_wgslsmith_index_u32(~1u, 2u)], (1u ^ global2.x) > u_input.b.x), func_1(), false);
    global2 = ~(~vec3<u32>(52622u | select(4294967295u, u_input.a.x, var_0.x), u_input.a.x, ~95191u));
    let var_1 = func_2();
    var var_2 = Struct_1(countOneBits(0i), ~var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.x);
}

