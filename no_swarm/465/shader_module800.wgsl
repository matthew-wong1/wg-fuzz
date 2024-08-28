struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: i32,
    c: Struct_2,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<Struct_4, 4>;

var<private> global2: bool = true;

var<private> global3: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(vec2<bool>(false, true), i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, true, false), 51689u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false), 4294967295u, vec3<bool>(true, false, false)), 89974u), 56738i), Struct_3(vec2<bool>(false, false), -1i, Struct_2(Struct_1(vec3<bool>(true, false, false), 4503u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true), 1u, vec3<bool>(true, true, true)), 39312u), -1i), Struct_3(vec2<bool>(false, true), 1466i, Struct_2(Struct_1(vec3<bool>(false, true, false), 1u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true), 1u, vec3<bool>(true, false, false)), 1u), -29675i), Struct_3(vec2<bool>(true, false), 33749i, Struct_2(Struct_1(vec3<bool>(true, true, false), 19132u, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false), 1u, vec3<bool>(true, true, true)), 4107u), 0i), Struct_3(vec2<bool>(true, true), 0i, Struct_2(Struct_1(vec3<bool>(true, false, true), 4294967295u, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true), 1u, vec3<bool>(false, false, true)), 4294967295u), 69336i), Struct_3(vec2<bool>(true, true), i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, false, true), 43529u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true), 48788u, vec3<bool>(true, true, true)), 37801u), -461i), Struct_3(vec2<bool>(true, false), -27648i, Struct_2(Struct_1(vec3<bool>(true, true, true), 4294967295u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false), 61524u, vec3<bool>(true, true, true)), 1u), 2147483647i), Struct_3(vec2<bool>(true, false), -1i, Struct_2(Struct_1(vec3<bool>(false, true, false), 7971u, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, true), 42597u, vec3<bool>(false, true, false)), 4322u), 33385i), Struct_3(vec2<bool>(true, true), -12380i, Struct_2(Struct_1(vec3<bool>(false, true, false), 57649u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true), 33828u, vec3<bool>(false, true, true)), 4294967295u), -4655i), Struct_3(vec2<bool>(true, true), -88830i, Struct_2(Struct_1(vec3<bool>(false, false, false), 22127u, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true), 2274u, vec3<bool>(true, true, true)), 26561u), 0i), Struct_3(vec2<bool>(false, false), -66993i, Struct_2(Struct_1(vec3<bool>(true, false, true), 0u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true), 1u, vec3<bool>(false, false, true)), 57309u), 23855i), Struct_3(vec2<bool>(true, false), -35733i, Struct_2(Struct_1(vec3<bool>(true, false, false), 46493u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false), 7215u, vec3<bool>(false, true, false)), 0u), -31699i), Struct_3(vec2<bool>(true, true), 2147483647i, Struct_2(Struct_1(vec3<bool>(false, true, false), 9181u, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false), 79717u, vec3<bool>(false, false, true)), 0u), 48622i), Struct_3(vec2<bool>(false, false), i32(-2147483648), Struct_2(Struct_1(vec3<bool>(false, false, false), 24436u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, false), 0u, vec3<bool>(false, true, true)), 4294967295u), -1i), Struct_3(vec2<bool>(true, true), 0i, Struct_2(Struct_1(vec3<bool>(true, true, true), 1u, vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false), 62057u, vec3<bool>(false, true, false)), 2622u), -40815i), Struct_3(vec2<bool>(true, true), -5373i, Struct_2(Struct_1(vec3<bool>(true, false, false), 4294967295u, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true), 0u, vec3<bool>(true, false, false)), 0u), -3056i), Struct_3(vec2<bool>(true, true), -60096i, Struct_2(Struct_1(vec3<bool>(false, true, false), 0u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, true), 1u, vec3<bool>(false, false, false)), 0u), 5038i), Struct_3(vec2<bool>(false, false), 0i, Struct_2(Struct_1(vec3<bool>(true, false, false), 30479u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false), 85044u, vec3<bool>(true, true, false)), 47932u), 1i), Struct_3(vec2<bool>(true, false), 25587i, Struct_2(Struct_1(vec3<bool>(false, true, false), 47747u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true), 0u, vec3<bool>(false, true, false)), 4294967295u), -34147i), Struct_3(vec2<bool>(true, true), -1i, Struct_2(Struct_1(vec3<bool>(true, true, true), 1u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true), 1u, vec3<bool>(false, false, true)), 4294967295u), i32(-2147483648)), Struct_3(vec2<bool>(false, true), -25850i, Struct_2(Struct_1(vec3<bool>(true, true, true), 53604u, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false), 1u, vec3<bool>(true, false, false)), 4294967295u), 17802i), Struct_3(vec2<bool>(false, false), i32(-2147483648), Struct_2(Struct_1(vec3<bool>(true, false, false), 32984u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, false), 1u, vec3<bool>(true, true, true)), 1u), -5022i), Struct_3(vec2<bool>(true, true), -1i, Struct_2(Struct_1(vec3<bool>(false, false, false), 4294967295u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec3<bool>(false, false, true)), 0u), 15698i), Struct_3(vec2<bool>(false, true), 1i, Struct_2(Struct_1(vec3<bool>(true, false, true), 25912u, vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, true), 1u, vec3<bool>(true, true, false)), 4294967295u), -1i), Struct_3(vec2<bool>(false, true), -37753i, Struct_2(Struct_1(vec3<bool>(false, false, true), 54196u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false), 11751u, vec3<bool>(true, true, false)), 35904u), 2147483647i), Struct_3(vec2<bool>(true, true), -1i, Struct_2(Struct_1(vec3<bool>(false, true, false), 1u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, false), 4294967295u, vec3<bool>(true, false, true)), 72865u), 2147483647i), Struct_3(vec2<bool>(false, true), 55798i, Struct_2(Struct_1(vec3<bool>(true, true, false), 30552u, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true), 34407u, vec3<bool>(false, false, true)), 4294967295u), -16348i), Struct_3(vec2<bool>(false, false), 13626i, Struct_2(Struct_1(vec3<bool>(true, false, true), 4294967295u, vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false), 1u, vec3<bool>(true, false, true)), 30279u), i32(-2147483648)), Struct_3(vec2<bool>(false, true), 2147483647i, Struct_2(Struct_1(vec3<bool>(false, false, false), 62438u, vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true), 10760u, vec3<bool>(true, false, false)), 38363u), 23692i), Struct_3(vec2<bool>(false, false), 2375i, Struct_2(Struct_1(vec3<bool>(false, false, false), 0u, vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, true), 6899u, vec3<bool>(false, false, false)), 31389u), -1i), Struct_3(vec2<bool>(false, true), -21026i, Struct_2(Struct_1(vec3<bool>(false, false, false), 0u, vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, false), 14236u, vec3<bool>(false, true, true)), 88893u), 20521i), Struct_3(vec2<bool>(false, true), 1i, Struct_2(Struct_1(vec3<bool>(false, false, true), 2132u, vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, true), 0u, vec3<bool>(false, false, true)), 5320u), i32(-2147483648)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<i32> {
    let var_0 = Struct_5(global0[_wgslsmith_index_u32(u_input.e.x, 13u)], select(vec3<bool>(true, true, u_input.e.x != 1u), !select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), 17186u > u_input.e.x), false));
    var var_1 = any(var_0.a.c);
    global1 = array<Struct_4, 4>();
    var var_2 = Struct_2(var_0.a, Struct_1(var_0.a.a, 0u, !vec3<bool>(!var_0.b.x, false, var_0.b.x != false)), var_0.a.b);
    let var_3 = select(4294967295u, 0u, var_2.a.a.x || var_0.a.c.x);
    return ~(~firstTrailingBit(_wgslsmith_sub_vec3_i32(select(u_input.b, vec3<i32>(u_input.d.x, u_input.c, u_input.c), var_0.a.a), vec3<i32>(u_input.d.x, u_input.b.x, 2147483647i))));
}

fn func_2() -> i32 {
    let var_0 = vec3<i32>(-(i32(-1i) * -(~37346i)), abs(-2147483647i), u_input.c);
    let var_1 = any(vec2<bool>(true, true));
    let var_2 = all(vec2<bool>(var_0.x != u_input.d.x, false));
    var var_3 = all(vec2<bool>(var_2, ~max(0u, u_input.e.x) == u_input.e.x));
    var var_4 = 1u;
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(u_input.d ^ vec3<i32>(var_0.x, 1i, -35984i)), _wgslsmith_sub_vec3_i32(var_0, func_3())), 7414i);
}

fn func_1() -> u32 {
    let var_0 = false;
    global1 = array<Struct_4, 4>();
    global3 = array<Struct_3, 32>();
    let var_1 = _wgslsmith_add_i32(u_input.c, func_2());
    global2 = true;
    return select(_wgslsmith_dot_vec2_u32(vec2<u32>(38376u, u_input.a), u_input.e.yx >> (u_input.e.ww % vec2<u32>(32u))) ^ (~_wgslsmith_dot_vec3_u32(u_input.e.zwx, u_input.e.wzz) ^ 1u), ~u_input.e.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec2<bool>(any(vec4<bool>(u_input.a > 27429u, false, 70487u < u_input.a, false)), any(vec4<bool>(true, true, true, true))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.b), vec3<i32>(-13887i, -2147483647i, u_input.d.x)) >> (~u_input.e.yyx % vec3<u32>(32u)), vec3<i32>(-1i, u_input.b.x, select(-1i, u_input.d.x, true))), Struct_2(Struct_1(vec3<bool>(true, true, true), func_1() & 8658u, !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false))), Struct_1(vec3<bool>(true, true, false), _wgslsmith_dot_vec2_u32(u_input.e.yy, vec2<u32>(26130u, 46983u)), vec3<bool>(u_input.d.x > u_input.b.x, true, -1i <= u_input.d.x)), u_input.a >> (5333u % 32u)), min(~1i, u_input.d.x));
    var var_1 = !vec4<bool>(all(vec4<bool>(var_0.c.a.a.x, !var_0.c.a.c.x, var_0.c.c == u_input.a, false)), var_0.c.a.a.x, (-2147483647i << (_wgslsmith_add_u32(u_input.a, u_input.a) % 32u)) != 7367i, 30950i > _wgslsmith_dot_vec2_i32(u_input.b.zz, vec2<i32>(u_input.c, 1i)));
    var_1 = !select(vec4<bool>(!var_0.c.b.a.x, !(!var_1.x), true | any(vec2<bool>(var_0.c.b.a.x, false)), true), !vec4<bool>(all(vec4<bool>(false, false, true, var_1.x)), !var_1.x, !var_0.c.a.c.x, !var_0.a.x), false);
    global3 = array<Struct_3, 32>();
    var var_2 = reverseBits(firstLeadingBit(-22474i << (_wgslsmith_sub_u32(0u, u_input.e.x) % 32u))) | u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(-6581i, ~min(4744i, 13327i))));
}

