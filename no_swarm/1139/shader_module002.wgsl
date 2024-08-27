struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<Struct_4, 5> = array<Struct_4, 5>(Struct_4(vec2<u32>(4294967295u, 0u), Struct_3(true, Struct_1(6944u), true), 11169u, vec4<bool>(true, true, true, false)), Struct_4(vec2<u32>(1u, 34198u), Struct_3(false, Struct_1(1u), false), 71180u, vec4<bool>(false, false, false, true)), Struct_4(vec2<u32>(4294967295u, 0u), Struct_3(false, Struct_1(4294967295u), true), 38768u, vec4<bool>(true, false, true, false)), Struct_4(vec2<u32>(32643u, 71231u), Struct_3(true, Struct_1(9946u), true), 0u, vec4<bool>(false, true, false, false)), Struct_4(vec2<u32>(0u, 26149u), Struct_3(false, Struct_1(57052u), true), 104143u, vec4<bool>(true, true, false, true)));

var<private> global2: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(i32(-2147483648), 17594i, 2147483647i, 16680i), vec4<i32>(0i, 0i, 1i, i32(-2147483648)), vec4<i32>(-43660i, -1i, 55584i, 0i), vec4<i32>(36613i, -1i, 1i, 1i), vec4<i32>(-28322i, 0i, 1i, 2147483647i), vec4<i32>(-2228i, 174i, -11153i, 0i), vec4<i32>(i32(-2147483648), -1i, -21259i, 18309i), vec4<i32>(9613i, i32(-2147483648), -5534i, 994i), vec4<i32>(1i, 1i, i32(-2147483648), 0i), vec4<i32>(0i, 34121i, i32(-2147483648), 1i), vec4<i32>(0i, 1i, -44873i, -1i), vec4<i32>(1i, 0i, 2524i, -10788i), vec4<i32>(1i, -46553i, 30819i, -1i), vec4<i32>(22231i, 2147483647i, 0i, 41823i), vec4<i32>(28183i, -61727i, 2147483647i, 1i), vec4<i32>(37946i, 38038i, 0i, -1i), vec4<i32>(i32(-2147483648), -1i, 26251i, 8579i), vec4<i32>(1i, -3839i, 28576i, -20278i), vec4<i32>(7514i, 0i, -14388i, -33435i), vec4<i32>(2147483647i, -24381i, 32618i, 8853i), vec4<i32>(29382i, -40498i, i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: u32) -> bool {
    let var_0 = vec2<i32>(-1i) * -vec2<i32>(~1i, ~firstTrailingBit(u_input.e.x));
    var var_1 = ~u_input.b.x;
    let var_2 = vec3<bool>(true, false, true);
    var_1 = ~(~arg_1);
    global0 = array<bool, 5>();
    return u_input.b.x >= arg_1;
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(select(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(u_input.c.x, 471u), u_input.c.x, ~(~u_input.b.x)), ~1u, false));
    global0 = array<bool, 5>();
    global1 = array<Struct_4, 5>();
    global2 = array<vec4<i32>, 21>();
    var var_1 = !vec3<bool>(!(!all(vec2<bool>(global0[_wgslsmith_index_u32(113983u, 5u)], false))), !all(select(vec4<bool>(global0[_wgslsmith_index_u32(41548u, 5u)], global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(var_0.a, 5u)]), vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 5u)], global0[_wgslsmith_index_u32(var_0.a, 5u)]), global0[_wgslsmith_index_u32(u_input.c.x, 5u)])), !(false && func_2(global0[_wgslsmith_index_u32(u_input.c.x, 5u)], 31085u)));
    return StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1306f)) * 1876f)), 1196f, 928f), max(0u, 36711u), u_input.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>((u_input.e.x << (1u % 32u)) & -46483i, 1i, u_input.a.x);
    global0 = array<bool, 5>();
    let x = u_input.a;
    s_output = func_1();
}

