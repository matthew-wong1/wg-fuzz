struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<vec3<u32>, 4>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(49338u, 33445u, 0u), false, vec2<bool>(false, true));

var<private> global3: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4244u), vec2<u32>(60514u, 93967u), vec2<u32>(14846u, 8505u), vec2<u32>(62697u, 106050u), vec2<u32>(1u, 1u));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    global3 = array<vec2<u32>, 8>();
    var var_0 = ~arg_2.a.zz;
    var var_1 = min(78418u, var_0.x);
    let var_2 = arg_2;
    let var_3 = _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(~(-vec3<i32>(global0[_wgslsmith_index_u32(41807u, 4u)], 1i, 1i))), ~(~_wgslsmith_mod_vec3_i32(vec3<i32>(40543i, -8713i, global0[_wgslsmith_index_u32(13136u, 4u)]), vec3<i32>(global0[_wgslsmith_index_u32(1u, 4u)], 0i, 2147483647i)))), global0[_wgslsmith_index_u32(var_0.x, 4u)]);
    return true;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(max(global2.a.x, 0u), 4u)] | global0[_wgslsmith_index_u32(~u_input.a.x << (68956u % 32u), 4u)];
    let var_1 = global2.a;
    var var_2 = 1i;
    let var_3 = Struct_1(~firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.x, 41630u, 45676u) << (global2.a % vec3<u32>(32u)), vec3<u32>(var_1.x, 40153u, global2.a.x) ^ vec3<u32>(global2.a.x, 4294967295u, arg_0.x))), func_3(arg_0 >> (~(~vec4<u32>(u_input.a.x, var_1.x, var_1.x, global2.a.x)) % vec4<u32>(32u)), vec2<bool>(any(select(vec4<bool>(global2.b, global2.b, true, false), vec4<bool>(global2.c.x, false, global2.b, false), global2.b)), !global2.b), Struct_1(~(~vec3<u32>(4294967295u, 28237u, global2.a.x)), any(!vec4<bool>(true, true, true, global2.c.x)), global2.c)), !vec2<bool>(abs(-2147483647i) > (global0[_wgslsmith_index_u32(0u, 4u)] ^ global0[_wgslsmith_index_u32(global2.a.x, 4u)]), true));
    global2 = Struct_1(u_input.a, !var_3.b, select(vec2<bool>(any(select(var_3.c, vec2<bool>(false, false), global2.b)), true), global2.c, global2.c));
    return var_3;
}

fn func_1() -> i32 {
    var var_0 = func_2(abs(reverseBits(~vec4<u32>(u_input.b, u_input.a.x, 1u, u_input.c))));
    let var_1 = Struct_1(~(~u_input.a), var_0.b, vec2<bool>(~_wgslsmith_mult_u32(u_input.b, 1u) != u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.b, 4u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 4u)], 2147483647i, global0[_wgslsmith_index_u32(35394u, 4u)], -29843i)), max(global0[_wgslsmith_index_u32(var_0.a.x, 4u)], -2147483647i)) < global0[_wgslsmith_index_u32(1u, 4u)]));
    var var_2 = !var_1.b;
    global0 = array<i32, 4>();
    var var_3 = var_1;
    return ~(i32(-1i) * -8858i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(func_1(), global0[_wgslsmith_index_u32(~u_input.b, 4u)], countOneBits(-27533i)), ~vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(global2.a.x, 4u)], 1i) & ~(vec3<i32>(36033i, 0i, -30745i) & vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(global2.a.x, 4u)])), vec3<bool>(true, global0[_wgslsmith_index_u32(firstLeadingBit(40287u), 4u)] <= global0[_wgslsmith_index_u32(global2.a.x, 4u)], any(vec4<bool>(global2.c.x, false, global2.b, false)))), i32(-1i) * -2147483647i, _wgslsmith_mod_vec2_i32(select(~(vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(3863u, 4u)]) ^ vec2<i32>(global0[_wgslsmith_index_u32(0u, 4u)], -1i)), vec2<i32>(abs(1i), _wgslsmith_div_i32(-1990i, -2147483647i)), true), reverseBits(_wgslsmith_mod_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(global2.a.x, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]), countOneBits(vec2<i32>(-47756i, global0[_wgslsmith_index_u32(global2.a.x, 4u)]))))));
}

